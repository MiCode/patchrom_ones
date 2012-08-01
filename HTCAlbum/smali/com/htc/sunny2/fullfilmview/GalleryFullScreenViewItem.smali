.class public Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.super Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DRM_TEXT_SHIFT_Y:F = 0.0f

.field protected static final IMAGE_LAYER:I = 0x0

.field protected static final INK_LAYER:I = 0x1

.field public static LTAG:Ljava/lang/String; = null

.field protected static final SPRITE_LAYER_COUNT:I = 0xb

.field protected static final SPRITE_LAYER_DRM:I = 0x6

.field protected static final SPRITE_LAYER_DRM_CORRUPT:I = 0x2

.field protected static final SPRITE_LAYER_DRM_TEXT_PRESSED:I = 0x7

.field protected static final SPRITE_LAYER_DRM_TEXT_UNPRESSED:I = 0x8

.field protected static final SPRITE_LAYER_IMAGE_CORRUPT:I = 0x0

.field protected static final SPRITE_LAYER_IS_3D:I = 0xa

.field protected static final SPRITE_LAYER_LOADING:I = 0x9

.field protected static final SPRITE_LAYER_PLAYABLE:I = 0x3

.field protected static final SPRITE_LAYER_PLAYABLE_SMALL:I = 0x4

.field protected static final SPRITE_LAYER_TEXT:I = 0x5

.field protected static final SPRITE_LAYER_VIDEO_CORRUPT:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private dataIndex:I

.field private imageSprite:Lcom/htc/sunny2/Sprite;

.field private indicatorSprite:Lcom/htc/sunny2/Sprite;

.field private mConsumeRightFlag:Z

.field private mCurrentTexture:Lcom/htc/sunny2/Texture;

.field private mFrameHeight:F

.field private mFrameWidth:F

.field public mIsAniamtion:Z

.field mIsDrm:Z

.field mIsForwardLock:Z

.field mIsPlayable:Z

.field private mIsReady:Z

.field private mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

.field private mText:Ljava/lang/String;

.field private mTextTexture:Lcom/htc/sunny2/Texture;

.field private mTextView:Landroid/widget/TextView;

.field paintTexture:Lcom/htc/sunny2/Texture;

.field private rotateDegrees:I

.field private sContext:Lcom/htc/sunny2/SunnyContext;

.field shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

.field private sourceImageHeight:I

.field private sourceImageWidth:I

.field private zoomable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    .line 50
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_Y_OFFSET:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    sput v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->DRM_TEXT_SHIFT_Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 59
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 60
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 61
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 64
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 66
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 67
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 69
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 70
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 72
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 75
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 76
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 77
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 80
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 81
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 83
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 106
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 919
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 112
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 3
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 59
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 60
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 61
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 64
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 66
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 67
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 69
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 70
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 72
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 75
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 76
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 77
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 80
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 81
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 83
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 106
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 919
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 117
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V
    .locals 3
    .parameter "context"
    .parameter "shareResources"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sContext:Lcom/htc/sunny2/SunnyContext;

    .line 59
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 60
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 61
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 64
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 66
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 67
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 69
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 70
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 72
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 74
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 75
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 76
    const/high16 v0, 0x43c8

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 77
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 80
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 81
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 83
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 106
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 919
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 123
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 125
    return-void
.end method

.method private setDisplayFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1155
    return-void
.end method

.method private setLoading(Z)V
    .locals 2
    .parameter "isLoading"

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    if-nez v0, :cond_0

    .line 1090
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setLoading NG - indicatorSprite is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1093
    return-void
.end method

.method private setPlayable(Z)V
    .locals 6
    .parameter "isPlayable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 937
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    if-nez v0, :cond_0

    .line 939
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setPlayable NG - indicatorSprite is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_0
    if-eqz p1, :cond_2

    .line 943
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v0, :cond_1

    .line 945
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 946
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 959
    :goto_0
    return-void

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 951
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 957
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method private setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 5
    .parameter "mediaData"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1159
    if-eqz p1, :cond_5

    .line 1161
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isPlayable()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 1162
    const-string v1, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1163
    .local v0, mIsWMDrm:Z
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 1164
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1166
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setPlayable(Z)V

    .line 1168
    :cond_3
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 1174
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isCorrupted()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setCorrupted(Z)V

    .line 1180
    .end local v0           #mIsWMDrm:Z
    :goto_1
    return-void

    :cond_4
    move v1, v2

    .line 1161
    goto :goto_0

    .line 1178
    :cond_5
    sget-object v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v2, "[HtcAlbum][GalleryFullScreenView][setupIndicator]mediaData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateImageSizeByDefaultOrTextureInfo()V
    .locals 3

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v0, v0, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1296
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1299
    :cond_0
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-gtz v0, :cond_2

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1303
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getSourceWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1304
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getSourceHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1306
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v0}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1307
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-lez v0, :cond_2

    .line 1308
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->setDisplayImageDimension(II)V

    .line 1314
    :cond_2
    return-void
.end method

.method private updateImageSizeByDrm()V
    .locals 24

    .prologue
    .line 1318
    sget v21, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    .line 1319
    .local v21, gridHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move/from16 v0, v21

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    move/from16 v0, v21

    if-eq v3, v0, :cond_1

    .line 1321
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1323
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v0, v3

    move/from16 v20, v0

    .line 1324
    .local v20, cropSize:F
    const/4 v3, 0x0

    cmpl-float v3, v20, v3

    if-lez v3, :cond_1

    .line 1326
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v22, v20, v3

    .line 1327
    .local v22, ratioX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    int-to-float v3, v3

    const/high16 v7, 0x4000

    mul-float/2addr v3, v7

    div-float v23, v20, v3

    .line 1328
    .local v23, ratioY:F
    const/high16 v3, 0x3f00

    sub-float v4, v3, v22

    .line 1329
    .local v4, topU:F
    const/high16 v3, 0x3f00

    sub-float v9, v3, v23

    .line 1330
    .local v9, topV:F
    const/high16 v3, 0x3f00

    add-float v6, v3, v22

    .line 1331
    .local v6, bottomU:F
    const/high16 v3, 0x3f00

    add-float v5, v3, v23

    .line 1332
    .local v5, bottomV:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v2

    .line 1333
    .local v2, sprite:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    sparse-switch v3, :sswitch_data_0

    .line 1345
    const/4 v11, 0x0

    move v10, v2

    move v12, v4

    move v13, v9

    move v14, v6

    move v15, v5

    invoke-static/range {v10 .. v15}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    .line 1351
    .end local v2           #sprite:I
    .end local v4           #topU:F
    .end local v5           #bottomV:F
    .end local v6           #bottomU:F
    .end local v9           #topV:F
    .end local v20           #cropSize:F
    .end local v22           #ratioX:F
    .end local v23           #ratioY:F
    :cond_1
    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 1352
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 1353
    return-void

    .line 1336
    .restart local v2       #sprite:I
    .restart local v4       #topU:F
    .restart local v5       #bottomV:F
    .restart local v6       #bottomU:F
    .restart local v9       #topV:F
    .restart local v20       #cropSize:F
    .restart local v22       #ratioX:F
    .restart local v23       #ratioY:F
    :sswitch_0
    const/4 v3, 0x0

    move v7, v5

    move v8, v4

    move v10, v6

    move v11, v9

    invoke-static/range {v2 .. v11}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1339
    :sswitch_1
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v5

    move v14, v6

    move v15, v9

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v9

    invoke-static/range {v10 .. v19}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1342
    :sswitch_2
    const/4 v11, 0x0

    move v10, v2

    move v12, v6

    move v13, v9

    move v14, v4

    move v15, v9

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-static/range {v10 .. v19}, Lcom/htc/sunny2/Sunny2;->Sprite_SetTextureCoordinatesBy4P(IIFFFFFFFF)V

    goto :goto_0

    .line 1333
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public allocateShareResources()V
    .locals 15

    .prologue
    const/high16 v14, 0x4000

    const/4 v13, 0x1

    const/4 v12, -0x2

    const/4 v11, 0x0

    .line 586
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    if-nez v8, :cond_1

    .line 590
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - null context"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v8, :cond_2

    .line 596
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - already allocated"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    :cond_2
    new-instance v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v8, p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;-><init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V

    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    .line 602
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x2080054

    invoke-static {v9, v10}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    .line 603
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_3

    .line 605
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture playable create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 609
    :cond_3
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x208008b

    invoke-static {v9, v10}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    .line 610
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_4

    .line 612
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture playable create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 616
    :cond_4
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x7f02002d

    invoke-static {v9, v10}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    .line 617
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_5

    .line 619
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture Drm create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 623
    :cond_5
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x7f02001e

    invoke-static {v9, v10}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    .line 624
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_6

    .line 626
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture DrmCorrupt create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 630
    :cond_6
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x7f020022

    invoke-static {v9, v10}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    .line 631
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_7

    .line 633
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture videoCorrupt create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 637
    :cond_7
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v10, 0x20800f0

    invoke-static {v9, v10}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    .line 638
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_8

    .line 640
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture corrupt create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 644
    :cond_8
    const-string v8, "com.htc.R.drawable.common_spinner_l"

    invoke-static {v8}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v2

    .line 645
    .local v2, nResId:I
    if-gtz v2, :cond_9

    .line 647
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - common_spinner_l not found , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const v2, 0x20800f0

    .line 650
    :cond_9
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v9, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    .line 651
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_a

    .line 653
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture loading create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    .line 664
    :cond_a
    new-instance v7, Lcom/htc/widget/HtcRimButton;

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    .line 665
    .local v7, viewRimButton:Lcom/htc/widget/HtcRimButton;
    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcRimButton;->setGravity(I)V

    .line 666
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x2040209

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 669
    .local v5, resources:Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonOuter(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 670
    .local v3, outer:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonPressed(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 671
    .local v4, pressed:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getRimButtonRest(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 673
    .local v6, rest:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v3, v4, v6}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 674
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcRimButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    const v9, 0x2030023

    invoke-virtual {v7, v8, v9}, Lcom/htc/widget/HtcRimButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 676
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 677
    .local v1, measureW:I
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 678
    .local v0, measureH:I
    invoke-virtual {v7, v1, v0}, Lcom/htc/widget/HtcRimButton;->measure(II)V

    .line 679
    invoke-virtual {v7}, Lcom/htc/widget/HtcRimButton;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Lcom/htc/widget/HtcRimButton;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v11, v11, v8, v9}, Lcom/htc/widget/HtcRimButton;->layout(IIII)V

    .line 681
    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcRimButton;->setFocusable(Z)V

    .line 682
    invoke-virtual {v7, v13}, Lcom/htc/widget/HtcRimButton;->setColorOn(Z)V

    .line 683
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-static {v7}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunny2/Texture;

    .line 684
    invoke-virtual {v7, v11}, Lcom/htc/widget/HtcRimButton;->setColorOn(Z)V

    .line 685
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-static {v7}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunny2/Texture;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunny2/Texture;

    .line 688
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v8, v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunny2/Texture;

    invoke-virtual {v8}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v8

    if-nez v8, :cond_0

    .line 691
    :cond_b
    sget-object v8, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v9, "allocateShareResources() NG - texture loading create failed , call freeShareResources()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->freeShareResources()V

    goto/16 :goto_0
.end method

.method public attachToSceneNode(Lcom/htc/sunny2/SceneNode;)V
    .locals 32
    .parameter "parentSceneNode"

    .prologue
    .line 134
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v17

    if-nez v17, :cond_0

    .line 137
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "create imageSprite NG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    .line 313
    :goto_0
    return-void

    .line 142
    :cond_0
    const/16 v17, 0xb

    invoke-static/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v17

    if-nez v17, :cond_1

    .line 145
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "create indicatorSprite NG"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    .line 147
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "create indicatorSprite NG - release imageSprite"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Sprite;->release()V

    .line 149
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    goto :goto_0

    .line 155
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f80

    const/high16 v19, 0x3f80

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    .line 166
    .local v4, playableLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 169
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 175
    :goto_1
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v5

    .line 178
    .local v5, playableLayerSmall:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 181
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 187
    :goto_2
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    .line 190
    .local v6, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v7, v0

    .line 193
    .local v7, drmWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v8, v0

    .line 196
    .local v8, drmHeight:F
    sget v17, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    .line 197
    .local v28, gridHeight:F
    const/high16 v17, 0x4000

    div-float v17, v28, v17

    const/high16 v18, 0x4000

    div-float v18, v7, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    sget v18, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v26, v17, v18

    .line 198
    .local v26, drmX:F
    const/high16 v17, 0x4000

    div-float v17, v28, v17

    const/high16 v18, 0x4000

    div-float v18, v8, v18

    sub-float v17, v17, v18

    sget v18, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v27, v17, v18

    .line 199
    .local v27, drmY:F
    move/from16 v0, v26

    neg-float v9, v0

    move/from16 v0, v27

    neg-float v10, v0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 200
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 206
    .end local v7           #drmWidth:F
    .end local v8           #drmHeight:F
    .end local v26           #drmX:F
    .end local v27           #drmY:F
    .end local v28           #gridHeight:F
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v9

    .line 211
    .local v9, corruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    move-object/from16 v22, v0

    .line 214
    .local v22, corruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v10, v0

    invoke-virtual/range {v22 .. v22}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 215
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 221
    .end local v22           #corruptTexture:Lcom/htc/sunny2/Texture;
    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v10

    .line 224
    .local v10, drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    move-object/from16 v23, v0

    .line 227
    .local v23, drmCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v11, v0

    invoke-virtual/range {v23 .. v23}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 228
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 234
    .end local v23           #drmCorruptTexture:Lcom/htc/sunny2/Texture;
    :goto_5
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v11

    .line 237
    .local v11, videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    move-object/from16 v31, v0

    .line 240
    .local v31, videoCorruptTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v12, v0

    invoke-virtual/range {v31 .. v31}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 241
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 247
    .end local v31           #videoCorruptTexture:Lcom/htc/sunny2/Texture;
    :goto_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x9

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v12

    .line 250
    .local v12, loadingLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    move-object/from16 v30, v0

    .line 253
    .local v30, loadingTexture:Lcom/htc/sunny2/Texture;
    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    invoke-virtual/range {v30 .. v30}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 254
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 260
    .end local v30           #loadingTexture:Lcom/htc/sunny2/Texture;
    :goto_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v29

    .line 277
    .local v29, is3DLayer:Lcom/htc/sunny2/Sprite$Layer;
    const/16 v17, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v13

    .line 280
    .local v13, drmTextPressedLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunny2/Texture;

    move-object/from16 v24, v0

    .line 284
    .local v24, drmTextPressedTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v14, v0

    .line 285
    .local v14, w:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 286
    .local v15, h:F
    const/16 v16, 0x0

    sget v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->DRM_TEXT_SHIFT_Y:F

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 287
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 288
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v14, v19

    invoke-virtual/range {v24 .. v24}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v15, v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 294
    .end local v14           #w:F
    .end local v15           #h:F
    .end local v24           #drmTextPressedTexture:Lcom/htc/sunny2/Texture;
    :goto_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v16

    .line 297
    .local v16, drmTextUnpressedLayer:Lcom/htc/sunny2/Sprite$Layer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunny2/Texture;

    move-object/from16 v25, v0

    .line 302
    .local v25, drmTextUnpressedTexture:Lcom/htc/sunny2/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v14, v0

    .line 303
    .restart local v14       #w:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 304
    .restart local v15       #h:F
    const/16 v19, 0x0

    sget v20, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->DRM_TEXT_SHIFT_Y:F

    const/16 v21, 0x0

    move/from16 v17, v14

    move/from16 v18, v15

    invoke-virtual/range {v16 .. v21}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 305
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 306
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v14, v19

    invoke-virtual/range {v25 .. v25}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v15, v20

    invoke-virtual/range {v16 .. v20}, Lcom/htc/sunny2/Sprite$Layer;->setTextureCoordinatesBy2P(FFFF)V

    .line 312
    .end local v14           #w:F
    .end local v15           #h:F
    .end local v25           #drmTextUnpressedTexture:Lcom/htc/sunny2/Texture;
    :goto_9
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 173
    .end local v5           #playableLayerSmall:Lcom/htc/sunny2/Sprite$Layer;
    .end local v6           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #corruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v10           #drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v11           #videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v12           #loadingLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v13           #drmTextPressedLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v16           #drmTextUnpressedLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v29           #is3DLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_2
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - playableLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 185
    .restart local v5       #playableLayerSmall:Lcom/htc/sunny2/Sprite$Layer;
    :cond_3
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - playableLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 204
    .restart local v6       #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_4
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 219
    .restart local v9       #corruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_5
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - corruptLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 232
    .restart local v10       #drmCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_6
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmCorruptLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 245
    .restart local v11       #videoCorruptLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_7
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - videoCorruptLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 258
    .restart local v12       #loadingLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_8
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - loadingLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 292
    .restart local v13       #drmTextPressedLayer:Lcom/htc/sunny2/Sprite$Layer;
    .restart local v29       #is3DLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_9
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmTextLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 310
    .restart local v16       #drmTextUnpressedLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_a
    sget-object v17, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v18, "attachToSceneNode NG - drmTextLayer_shareResources is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 8
    .parameter "dataIndex"
    .parameter "mediaData"

    .prologue
    const/4 v7, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 343
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 344
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 345
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setTextureUseMaxQualityAs(I)V

    .line 346
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v4, :cond_6

    .line 348
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 350
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 352
    :try_start_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 353
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    .line 366
    const/4 v2, 0x0

    .line 369
    .local v2, mimeType:Ljava/lang/String;
    :try_start_1
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 375
    :goto_1
    const/4 v1, 0x1

    .line 376
    .local v1, isJPSFullSideBySide:Z
    if-eqz v2, :cond_0

    const-string v4, "image/jps"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    if-eqz v1, :cond_0

    .line 380
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 393
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v4

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 394
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 395
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v4, :cond_1

    .line 397
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v4, v4, 0x168

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 400
    :cond_1
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_8

    .line 402
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    .line 408
    :goto_2
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 411
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 412
    const/4 v3, -0x1

    .line 413
    .local v3, quality:I
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_2

    .line 414
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v3

    .line 415
    if-nez v3, :cond_9

    .line 416
    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 422
    :cond_2
    :goto_3
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_4

    if-nez v3, :cond_5

    .line 423
    :cond_4
    iput-boolean v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 426
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageSourceType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 428
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    .line 429
    invoke-direct {p0, v6}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 434
    .end local v1           #isJPSFullSideBySide:Z
    .end local v2           #mimeType:Ljava/lang/String;
    .end local v3           #quality:I
    :cond_6
    :goto_4
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/lang/Exception;
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 356
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 359
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 360
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto/16 :goto_0

    .line 371
    .restart local v2       #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 373
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, ""

    goto/16 :goto_1

    .line 406
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isJPSFullSideBySide:Z
    :cond_8
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_2

    .line 417
    .restart local v3       #quality:I
    :cond_9
    if-ne v3, v6, :cond_2

    .line 418
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_3

    .line 431
    :cond_a
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_4
.end method

.method public bridge synthetic bindMediaData(ILcom/htc/sunny2/IMediaData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->bindMediaData(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    return-void
.end method

.method public create()Lcom/htc/sunny2/ViewItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/sunny2/ViewItem",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;)V

    return-object v0
.end method

.method public create(Z)Lcom/htc/sunny2/ViewItem;
    .locals 1
    .parameter "isChild"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/htc/sunny2/ViewItem",
            "<",
            "Lcom/htc/opensense2/album/sunny/IMediaDataGallery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1408
    const/4 v0, 0x0

    return-object v0
.end method

.method public detachFromScene(Lcom/htc/sunny2/SceneNode;)V
    .locals 3
    .parameter "parentSceneNode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    .line 325
    :cond_1
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 326
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 327
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 330
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextTexture:Lcom/htc/sunny2/Texture;

    .line 332
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    .line 334
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 337
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 339
    :cond_3
    return-void
.end method

.method public freeShareResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 725
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "freeShareResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-nez v0, :cond_0

    .line 758
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 733
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunny2/Texture;

    .line 734
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 735
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunny2/Texture;

    .line 736
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 737
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    .line 738
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 739
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunny2/Texture;

    .line 740
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 741
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunny2/Texture;

    .line 742
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 743
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunny2/Texture;

    .line 744
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 745
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunny2/Texture;

    .line 746
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 747
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunny2/Texture;

    .line 752
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 753
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunny2/Texture;

    .line 757
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getImageRotateDegrees()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    return v0
.end method

.method public getSourceImageHeight()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    return v0
.end method

.method public getSourceImageWidth()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    return v0
.end method

.method public hideDRMIndicator()V
    .locals 3

    .prologue
    .line 1393
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v1, :cond_1

    .line 1395
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 1396
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-eqz v1, :cond_1

    .line 1397
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1399
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_1
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    return v0
.end method

.method public onDRMPressed(Z)V
    .locals 5
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1042
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_1

    .line 1044
    sget-object v1, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v2, "onPressed NG - indicatorSprite is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_0

    .line 1051
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_3

    move v0, v1

    .line 1052
    .local v0, isDisplayDrmText:Z
    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_2

    .line 1053
    const/4 v0, 0x0

    .line 1056
    :cond_2
    if-eqz v0, :cond_0

    .line 1059
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1060
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0

    .end local v0           #isDisplayDrmText:Z
    :cond_3
    move v0, v2

    .line 1051
    goto :goto_1

    .restart local v0       #isDisplayDrmText:Z
    :cond_4
    move v1, v2

    .line 1060
    goto :goto_2
.end method

.method public onFrameSizeUpdate(FF)V
    .locals 11
    .parameter "frameWidth"
    .parameter "frameHeight"

    .prologue
    const/high16 v4, 0x4000

    .line 762
    const/4 v6, 0x0

    .line 763
    .local v6, adjustLayout:Z
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 765
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameWidth:F

    .line 766
    iput p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mFrameHeight:F

    .line 767
    const/4 v6, 0x1

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v0

    int-to-float v1, v0

    .line 773
    .local v1, drmWidth:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v0, v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 776
    .local v2, drmHeight:F
    sget v0, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v9, v0

    .line 777
    .local v9, gridHeight:F
    div-float v0, v9, v4

    div-float v3, v1, v4

    sub-float/2addr v0, v3

    neg-float v0, v0

    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v3, v3

    add-float v7, v0, v3

    .line 778
    .local v7, drmX:F
    div-float v0, v9, v4

    div-float v3, v2, v4

    sub-float/2addr v0, v3

    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v3, v3

    add-float v8, v0, v3

    .line 779
    .local v8, drmY:F
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    neg-float v3, v7

    neg-float v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 780
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_2

    .line 782
    iget-object v10, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mTextView:Landroid/widget/TextView;

    .line 783
    .local v10, txtView:Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 784
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    .line 813
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v7           #drmX:F
    .end local v8           #drmY:F
    .end local v9           #gridHeight:F
    .end local v10           #txtView:Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    :cond_3
    return-void
.end method

.method public onImageGeometryUpdate(FFFF)V
    .locals 10
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imageCenterX"
    .parameter "imageCenterY"

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x4000

    .line 854
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    if-nez v3, :cond_0

    .line 856
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, p3, p4, v5}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 857
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, p1, p2, v4}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 860
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_1

    .line 862
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 863
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 864
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 865
    .local v2, drmHeight:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getScale()[F

    move-result-object v8

    .line 867
    .local v8, imageScale:[F
    const/4 v3, 0x0

    aget v3, v8, v3

    div-float/2addr v3, v9

    div-float v4, v1, v9

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 868
    .local v6, drmX:F
    const/4 v3, 0x1

    aget v3, v8, v3

    div-float/2addr v3, v9

    div-float v4, v2, v9

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 869
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 871
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #imageScale:[F
    :cond_1
    return-void
.end method

.method public onImageGeometryUpdateWithUVAdjust(FFFFF)V
    .locals 15
    .parameter "fitToScreenAspect"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "imageCenterX"
    .parameter "imageCenterY"

    .prologue
    .line 821
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v2}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 823
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v3, 0x3f80

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/sunny2/Sprite;->setScale(FFF)V

    .line 825
    div-float v13, p2, p3

    .line 826
    .local v13, imageAspect:F
    cmpl-float v2, p1, v13

    if-ltz v2, :cond_1

    .line 827
    div-float v14, v13, p1

    .line 828
    .local v14, uSpan:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v14

    const/high16 v3, 0x4000

    div-float v4, v2, v3

    .line 829
    .local v4, u0:F
    const/high16 v2, 0x3f80

    sub-float v6, v2, v4

    .line 830
    .local v6, u1:F
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    const/4 v5, 0x0

    const/high16 v7, 0x3f80

    invoke-virtual/range {v2 .. v7}, Lcom/htc/sunny2/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    .line 838
    .end local v4           #u0:F
    .end local v6           #u1:F
    .end local v13           #imageAspect:F
    .end local v14           #uSpan:F
    :cond_0
    :goto_0
    return-void

    .line 832
    .restart local v13       #imageAspect:F
    :cond_1
    div-float v14, p1, v13

    .line 833
    .restart local v14       #uSpan:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v14

    const/high16 v3, 0x4000

    div-float v10, v2, v3

    .line 834
    .local v10, v0:F
    const/high16 v2, 0x3f80

    sub-float v12, v2, v10

    .line 835
    .local v12, v1:F
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    const/4 v9, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual/range {v7 .. v12}, Lcom/htc/sunny2/Sprite;->setTextureCoordinatesWithRotate(IFFFF)V

    goto :goto_0
.end method

.method public onImageTextureExpired()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 925
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 928
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 929
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 930
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 931
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 933
    :cond_0
    return-void
.end method

.method public onImageTextureReady(Lcom/htc/sunny2/Texture;)V
    .locals 9
    .parameter "texture"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 875
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_0

    .line 877
    if-eqz p1, :cond_0

    .line 879
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v7, p1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 880
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 881
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 885
    :cond_0
    const/4 v3, 0x0

    .line 886
    .local v3, sourceImageDimensionWidth:I
    const/4 v2, 0x0

    .line 887
    .local v2, sourceImageDimensionHeight:I
    const/4 v0, 0x0

    .line 888
    .local v0, checkTextureSizeUpdate:Z
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v4

    if-eqz v4, :cond_2

    .line 889
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    .line 890
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v2

    .line 891
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    if-lt v4, v3, :cond_1

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    if-ge v4, v2, :cond_2

    .line 892
    :cond_1
    const/4 v0, 0x1

    .line 893
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][GalleryFullScreenViewItem][onImageTextureReady]this.sourceImageWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this.sourceImageHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HtcAlbum][GalleryFullScreenViewItem][onImageTextureReady]sourceImageDimensionWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sourceImageDimensionHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_2
    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_5

    .line 900
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 906
    :goto_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v4, v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v4, :cond_4

    .line 907
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v4, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    invoke-interface {v4}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v1

    .line 908
    .local v1, quality:I
    if-nez v1, :cond_6

    .line 909
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-direct {p0, v8}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    .line 916
    .end local v1           #quality:I
    :cond_4
    :goto_1
    iput-boolean v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 917
    return-void

    .line 904
    :cond_5
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v4}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    goto :goto_0

    .line 911
    .restart local v1       #quality:I
    :cond_6
    if-ne v1, v8, :cond_4

    .line 912
    sget-object v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v5, "[HtcAlbum][GalleryFullScreenView][onImageTextureReady]setLoading false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-direct {p0, v7}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setLoading(Z)V

    goto :goto_1
.end method

.method public onSetImageAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    .line 850
    :cond_0
    return-void
.end method

.method public onSetImageVisible(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 844
    :cond_0
    return-void
.end method

.method public refreshMediaSize(ILcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 7
    .parameter "itemIndex"
    .parameter "mediaData"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 477
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 478
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 479
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    if-eqz v3, :cond_4

    .line 481
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setupIndicator(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V

    .line 482
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isVideo()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->alreadyHasDisplayImageDimension()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 484
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 485
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayImageHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDegreesRotated()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 504
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    rem-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 505
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    if-gez v3, :cond_0

    .line 507
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    add-int/lit16 v3, v3, 0x168

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 510
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDefaultOrTextureInfo()V

    .line 513
    const/4 v2, 0x0

    .line 516
    .local v2, mimeType:Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    invoke-interface {v3}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 522
    :goto_1
    const/4 v1, 0x1

    .line 523
    .local v1, isJPSFullSideBySide:Z
    if-eqz v2, :cond_1

    const-string v3, "image/jps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    if-eqz v1, :cond_1

    .line 527
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 532
    :cond_1
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_6

    .line 534
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->updateImageSizeByDrm()V

    .line 540
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 543
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 544
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v3, v3, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    if-eqz v3, :cond_4

    check-cast p2, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;

    .end local p2
    invoke-interface {p2}, Lcom/htc/opensense2/album/sunny/IMediaDataOnline;->getMediaQuality()I

    move-result v3

    if-nez v3, :cond_4

    .line 547
    :cond_3
    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 550
    .end local v1           #isJPSFullSideBySide:Z
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_4
    return-void

    .line 486
    .restart local p2
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 488
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto :goto_0

    .line 491
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 492
    iput v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    goto :goto_0

    .line 518
    .restart local v2       #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 520
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_1

    .line 538
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #isJPSFullSideBySide:Z
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    goto :goto_2
.end method

.method public resetConsumeRightFlag()V
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v0, :cond_0

    .line 1191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 1193
    :cond_0
    return-void
.end method

.method public setConsumeRightFlag()V
    .locals 1

    .prologue
    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 1185
    return-void
.end method

.method public setCorrupted(Z)V
    .locals 4
    .parameter "isCorrupted"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1065
    if-eqz p1, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1068
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1069
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1070
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1071
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1072
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1076
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    if-eqz v0, :cond_1

    .line 1078
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1084
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto :goto_0
.end method

.method public setDrm(Lcom/htc/opensense2/album/sunny/IMediaDataGallery;)V
    .locals 13
    .parameter "mediaData"

    .prologue
    .line 963
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    if-nez v3, :cond_0

    .line 965
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - indicatorSprite is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :goto_0
    return-void

    .line 968
    :cond_0
    if-nez p1, :cond_1

    .line 970
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setDrm NG - mediaData is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 973
    :cond_1
    const-string v3, "video/x-wmv-drm"

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getMediaMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 974
    .local v11, mIsWMDrm:Z
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->isDrm()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v11, :cond_8

    :cond_2
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 976
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_c

    .line 978
    if-nez v11, :cond_3

    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getContentType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 979
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 980
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "setupIndicator: Drm is ForwardLock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 985
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_9

    .line 987
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 988
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 989
    .local v2, drmHeight:F
    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->DRM_THUMBNAIL_SIZE:I

    int-to-float v8, v3

    .line 990
    .local v8, gridHeight:F
    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v1, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 991
    .local v6, drmX:F
    const/high16 v3, 0x4000

    div-float v3, v8, v3

    const/high16 v4, 0x4000

    div-float v4, v2, v4

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 992
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 993
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v4, v4, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1000
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #gridHeight:F
    :goto_2
    const/4 v10, 0x0

    .line 1001
    .local v10, isStateSuccess:Z
    instance-of v3, p1, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_5

    move-object v3, p1

    .line 1002
    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v10

    .line 1004
    :cond_5
    invoke-interface {p1}, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    .line 1005
    .local v12, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    if-eq v3, v12, :cond_6

    .line 1006
    iput-object v12, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 1007
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->setDisplayFileName(Ljava/lang/String;)V

    .line 1009
    :cond_6
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_a

    const/4 v9, 0x1

    .line 1010
    .local v9, isDisplayDrmText:Z
    :goto_3
    if-eqz v9, :cond_7

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    if-eqz v3, :cond_7

    .line 1011
    const/4 v9, 0x0

    .line 1013
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1014
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1016
    if-eqz v10, :cond_b

    .line 1017
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1018
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 974
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #isDisplayDrmText:Z
    .end local v10           #isStateSuccess:Z
    .end local v12           #text:Ljava/lang/String;
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 997
    .restart local v0       #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    :cond_9
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "attachToSceneNode NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1009
    .restart local v10       #isStateSuccess:Z
    .restart local v12       #text:Ljava/lang/String;
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 1020
    .restart local v9       #isDisplayDrmText:Z
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1021
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1022
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1023
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1024
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1026
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0

    .line 1033
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v9           #isDisplayDrmText:Z
    .end local v10           #isStateSuccess:Z
    .end local v12           #text:Ljava/lang/String;
    :cond_c
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1034
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1035
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1036
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    goto/16 :goto_0
.end method

.method public setIndicatorSpriteVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    .line 1403
    return-void
.end method

.method public setItemPaintLayerBMP(Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;)V
    .locals 8
    .parameter "itemPaintLayerInfo"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1197
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1200
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1201
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1202
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 1205
    :cond_0
    if-eqz p1, :cond_4

    .line 1207
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1209
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP - itemPaintLayerInfo.bmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1213
    :cond_2
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->bmp:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    .line 1214
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v0

    if-nez v0, :cond_3

    .line 1216
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - paintTexture.getHandler() == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    .line 1218
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    iget v1, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeX:F

    iget v2, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->sizeY:F

    iget v3, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originX:F

    iget v4, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->originY:F

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1223
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->paintTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v7, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1224
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1225
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p1, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemPaintLayerInfo;->paintSetListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView$IPaintSetListener;->onPaintLayerSetEnd()V

    goto :goto_0

    .line 1232
    :cond_4
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - itemPaintLayerInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setItemPaintTransparency(I)V
    .locals 2
    .parameter "transparency"

    .prologue
    .line 1238
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1240
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v1, "setItemPaintLayerBMP NG - transparency range incorrect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :goto_0
    return-void

    .line 1244
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/Sprite$Layer;->setAlpha(I)V

    goto :goto_0
.end method

.method public setTextureUseMaxQualityAs(I)V
    .locals 9
    .parameter "quality"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1250
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    if-eqz v3, :cond_0

    .line 1252
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v7}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v0

    .line 1253
    .local v0, textureEQ:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4, v6}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(II)Lcom/htc/sunny2/Texture;

    move-result-object v1

    .line 1254
    .local v1, textureHQ:Lcom/htc/sunny2/Texture;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem;->imageTextureProvider:Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    invoke-interface {v3, v4}, Lcom/htc/sunny2/fullfilmview/FullScreenViewItem$IImageTextureProvider;->queryItemImageTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    .line 1255
    .local v2, textureLQ:Lcom/htc/sunny2/Texture;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_2

    if-lt p1, v7, :cond_2

    .line 1257
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1258
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1259
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 1286
    .end local v0           #textureEQ:Lcom/htc/sunny2/Texture;
    .end local v1           #textureHQ:Lcom/htc/sunny2/Texture;
    .end local v2           #textureLQ:Lcom/htc/sunny2/Texture;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    if-eqz v3, :cond_1

    .line 1287
    iput-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 1289
    :cond_1
    return-void

    .line 1262
    .restart local v0       #textureEQ:Lcom/htc/sunny2/Texture;
    .restart local v1       #textureHQ:Lcom/htc/sunny2/Texture;
    .restart local v2       #textureLQ:Lcom/htc/sunny2/Texture;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_3

    if-lt p1, v6, :cond_3

    .line 1264
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1265
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1266
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 1270
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/htc/sunny2/Texture;->getHandler()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1272
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1273
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1274
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0

    .line 1279
    :cond_4
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1280
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1282
    iput-object v8, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    goto :goto_0
.end method

.method public showDRMIndicator(Z)V
    .locals 12
    .parameter "bForce"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v5, 0x4000

    .line 1357
    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    if-eqz v3, :cond_2

    .line 1359
    const/4 v9, 0x0

    .line 1360
    .local v9, isStateSuccess:Z
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    instance-of v3, v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    if-eqz v3, :cond_0

    .line 1362
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    check-cast v3, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->isDrmStateSuccess()Z

    move-result v9

    .line 1364
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    .line 1365
    .local v0, drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    if-eqz v9, :cond_4

    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    if-nez v3, :cond_4

    .line 1367
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    if-eqz v3, :cond_3

    .line 1369
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getWidth()I

    move-result v3

    int-to-float v1, v3

    .line 1370
    .local v1, drmWidth:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v3}, Lcom/htc/sunny2/Texture;->getHeight()I

    move-result v3

    int-to-float v2, v3

    .line 1371
    .local v2, drmHeight:F
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v3}, Lcom/htc/sunny2/Sprite;->getScale()[F

    move-result-object v8

    .line 1373
    .local v8, imageScale:[F
    aget v3, v8, v10

    div-float/2addr v3, v5

    div-float v4, v1, v5

    sub-float/2addr v3, v4

    neg-float v3, v3

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_X_OFFSET:I

    int-to-float v4, v4

    add-float v6, v3, v4

    .line 1374
    .local v6, drmX:F
    aget v3, v8, v11

    div-float/2addr v3, v5

    div-float v4, v2, v5

    sub-float/2addr v3, v4

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->FULLSCREEN_DRM_LOCK_ICON_Y_OFFSET:I

    int-to-float v4, v4

    add-float v7, v3, v4

    .line 1375
    .local v7, drmY:F
    neg-float v3, v6

    neg-float v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/Sprite$Layer;->setupGeometry(FFFFF)V

    .line 1376
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->shareResources:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0, v10, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 1377
    invoke-virtual {v0, v11}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 1389
    .end local v0           #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .end local v1           #drmWidth:F
    .end local v2           #drmHeight:F
    .end local v6           #drmX:F
    .end local v7           #drmY:F
    .end local v8           #imageScale:[F
    .end local v9           #isStateSuccess:Z
    :cond_2
    :goto_0
    return-void

    .line 1381
    .restart local v0       #drmLayer:Lcom/htc/sunny2/Sprite$Layer;
    .restart local v9       #isStateSuccess:Z
    :cond_3
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator NG - drmLayer_shareResources is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1386
    :cond_4
    sget-object v3, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->LTAG:Ljava/lang/String;

    const-string v4, "showDRMIndicator - do nothing for state not success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unbindMediaData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 439
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/htc/sunny2/Sprite$Layer;->setTexture(ILcom/htc/sunny2/Texture;)V

    .line 440
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 441
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setTextureRotate(I)V

    .line 442
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 443
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->imageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 445
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 446
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 447
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 448
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 449
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 450
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 451
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 454
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 455
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 456
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->indicatorSprite:Lcom/htc/sunny2/Sprite;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite$Layer;->setVisible(Z)V

    .line 458
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsDrm:Z

    .line 459
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsPlayable:Z

    .line 460
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsForwardLock:Z

    .line 461
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageWidth:I

    .line 462
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->sourceImageHeight:I

    .line 463
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->rotateDegrees:I

    .line 464
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->zoomable:Z

    .line 466
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mText:Ljava/lang/String;

    .line 467
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mConsumeRightFlag:Z

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->dataIndex:I

    .line 469
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mMediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 470
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mCurrentTexture:Lcom/htc/sunny2/Texture;

    .line 471
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsReady:Z

    .line 472
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;->mIsAniamtion:Z

    .line 473
    return-void
.end method
