.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;
.super Landroid/widget/BaseAdapter;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView2$OnScrollListener;
.implements Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HorizontalAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IMediaDate:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/htc/widget/HtcAbsListView2$OnScrollListener;",
        "Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HorizontalAdapter"


# instance fields
.field private mBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBurstAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

.field private mListView2:Lcom/htc/widget/HtcAbsListView2;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;Lcom/htc/widget/HtcAbsListView2;)V
    .locals 3
    .parameter
    .parameter "context"
    .parameter "adapter"
    .parameter "parentView"

    .prologue
    .line 2926
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2927
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2928
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t init HorizontalAdapter: context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adapter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2931
    :cond_1
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mContext:Landroid/content/Context;

    .line 2932
    iput-object p3, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBurstAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    .line 2933
    iput-object p4, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mListView2:Lcom/htc/widget/HtcAbsListView2;

    .line 2935
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBitmapCache:Landroid/util/SparseArray;

    .line 2937
    new-instance v0, Lcom/htc/sunny2/common/IterationTaskThread;

    const-string v1, "HorizontalAdapter"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    .line 2938
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationTaskThread;->setPriority(I)V

    .line 2939
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->beginThread()V

    .line 2941
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2942
    return-void
.end method

.method static synthetic access$5300(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBitmapCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;)Lcom/htc/widget/HtcAbsListView2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mListView2:Lcom/htc/widget/HtcAbsListView2;

    return-object v0
.end method


# virtual methods
.method public enableThumbnailDecode(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 2945
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 2946
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 2951
    :goto_0
    return-void

    .line 2949
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->pauseThread()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2975
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBurstAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2980
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBurstAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2985
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2990
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    const/4 v13, 0x0

    .local v13, imageView:Landroid/widget/ImageView;
    const/4 v14, 0x0

    .line 2992
    .local v14, imageViewBG:Landroid/widget/ImageView;
    if-nez p2, :cond_0

    .line 2993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2995
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5000()[I

    move-result-object v3

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v3, v3, v4

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5000()[I

    move-result-object v4

    sget v5, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v4, v4, v5

    sget v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v15, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3000
    .local v15, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v3, 0x7f090010

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #imageView:Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 3001
    .restart local v13       #imageView:Landroid/widget/ImageView;
    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3002
    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    sget v4, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    sget v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    sget v6, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3007
    const v3, 0x7f09000f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #imageViewBG:Landroid/widget/ImageView;
    check-cast v14, Landroid/widget/ImageView;

    .line 3008
    .restart local v14       #imageViewBG:Landroid/widget/ImageView;
    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3011
    .end local v15           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v3, 0x7f090010

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #imageView:Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 3012
    .restart local v13       #imageView:Landroid/widget/ImageView;
    const v3, 0x7f09000f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #imageViewBG:Landroid/widget/ImageView;
    check-cast v14, Landroid/widget/ImageView;

    .line 3014
    .restart local v14       #imageViewBG:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 3015
    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    const/4 v4, 0x0

    sget v5, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 3019
    :goto_0
    const/4 v11, 0x0

    .line 3020
    .local v11, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBitmapCache:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/ref/SoftReference;

    .line 3021
    .local v18, sf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v18, :cond_1

    .line 3022
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    check-cast v11, Landroid/graphics/Bitmap;

    .line 3025
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v11, :cond_6

    .line 3026
    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3064
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItem:I
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4600(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)I

    move-result v3

    move/from16 v0, p1

    if-ne v0, v3, :cond_7

    .line 3066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mSelectedItemColor:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$4700(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3073
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5100(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v12

    check-cast v12, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 3074
    .local v12, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v12, :cond_3

    if-eqz v13, :cond_3

    .line 3075
    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDegreesRotated()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 3077
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    #getter for: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->mIsComeFromCamera:Z
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5200(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3079
    if-eqz v12, :cond_8

    invoke-interface {v12}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isBestBurstPhoto()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3081
    const v3, 0x7f090011

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #imageView:Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 3082
    .restart local v13       #imageView:Landroid/widget/ImageView;
    const v3, 0x7f020030

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3083
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 3084
    .local v16, m6:I
    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    add-int v3, v3, v16

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_PADDING:I

    add-int v6, v6, v16

    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 3089
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3098
    .end local v16           #m6:I
    :cond_4
    :goto_3
    return-object p2

    .line 3017
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .end local v18           #sf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_5
    sget v3, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->CONTINUOUS_SHOT_HORIZONTAL_MARGIN:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 3029
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    .restart local v18       #sf:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_6
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3030
    const v3, 0x7f020003

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBurstAdapter:Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/htc/album/TabPluginDevice/AdapterBurstPhoto;->getItem(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v17

    .line 3033
    .local v17, mediaItem:Lcom/htc/sunny2/IMediaData;
    new-instance v2, Lcom/htc/sunny2/common/CacheItem;

    sget-object v3, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/16 v4, 0xa

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDisplayImageFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDateModified()J

    move-result-wide v6

    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getSize()J

    move-result-wide v8

    long-to-int v8, v8

    const/4 v10, 0x0

    move/from16 v9, p1

    invoke-direct/range {v2 .. v10}, Lcom/htc/sunny2/common/CacheItem;-><init>(Lcom/htc/sunny2/common/CacheItem$IOTYPE;ILjava/lang/String;JIILandroid/graphics/Bitmap;)V

    .line 3040
    .local v2, tempItem:Lcom/htc/sunny2/common/CacheItem;
    const/4 v3, 0x0

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSubIndex:I

    .line 3041
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 3042
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getMediaMimeType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mimeType:Ljava/lang/String;

    .line 3043
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDisplayImageInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mInputStream:Ljava/io/InputStream;

    .line 3044
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 3045
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDisplayImageUri()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/sunny2/common/CacheItem;->mUri:Ljava/lang/String;

    .line 3046
    invoke-interface/range {v17 .. v17}, Lcom/htc/sunny2/IMediaData;->getDisplayImageSourceType()I

    move-result v3

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mSourceType:I

    .line 3047
    invoke-static {}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5000()[I

    move-result-object v3

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v3, v3, v4

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetHeight:I

    .line 3048
    invoke-static {}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$5000()[I

    move-result-object v3

    sget v4, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->RESOLUTION:I

    aget v3, v3, v4

    iput v3, v2, Lcom/htc/sunny2/common/CacheItem;->mTargetWidth:I

    .line 3050
    new-instance v19, Lcom/htc/sunny2/common/IterationDecodeTask;

    invoke-direct/range {v19 .. v19}, Lcom/htc/sunny2/common/IterationDecodeTask;-><init>()V

    .line 3051
    .local v19, task:Lcom/htc/sunny2/common/IterationDecodeTask;
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/IterationDecodeTask;->setTaskIndex(I)V

    .line 3052
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCacheItem(Lcom/htc/sunny2/common/CacheItem;)V

    .line 3053
    invoke-virtual/range {v19 .. v20}, Lcom/htc/sunny2/common/IterationDecodeTask;->setCallbackListener(Lcom/htc/sunny2/common/IterationTask$TaskCallbackListener;)V

    .line 3054
    const/16 v3, 0x34

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/common/IterationDecodeTask;->setDecodeFlag(I)V

    .line 3059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v3, :cond_2

    if-eqz v19, :cond_2

    .line 3060
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/common/IterationTaskThread;->addTask(Lcom/htc/sunny2/common/IterationTask;)V

    goto/16 :goto_1

    .line 3070
    .end local v2           #tempItem:Lcom/htc/sunny2/common/CacheItem;
    .end local v17           #mediaItem:Lcom/htc/sunny2/IMediaData;
    .end local v19           #task:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3093
    .restart local v12       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_8
    const v3, 0x7f090011

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .end local v13           #imageView:Landroid/widget/ImageView;
    check-cast v13, Landroid/widget/ImageView;

    .line 3094
    .restart local v13       #imageView:Landroid/widget/ImageView;
    const/16 v3, 0x8

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 2965
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2966
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 2970
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 2971
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView2;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 3109
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    add-int/lit8 p2, p2, -0x32

    .line 3110
    if-gez p2, :cond_0

    .line 3111
    const/4 p2, 0x0

    .line 3114
    :cond_0
    add-int v1, p2, p3

    add-int/lit8 v0, v1, 0x64

    .line 3115
    .local v0, lastVisibleItem:I
    if-ge p4, v0, :cond_1

    .line 3116
    move v0, p4

    .line 3119
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->setVisibleRange(II)V

    .line 3120
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView2;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 3105
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    return-void
.end method

.method public onTaskCancel(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 3172
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    return-void
.end method

.method public onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunny2/common/IterationTask;)V
    .locals 3
    .parameter "bundle"
    .parameter "task"

    .prologue
    .line 3142
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    instance-of v1, p2, Lcom/htc/sunny2/common/IterationDecodeTask;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 3143
    check-cast v0, Lcom/htc/sunny2/common/IterationDecodeTask;

    .line 3144
    .local v0, oriTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mListView2:Lcom/htc/widget/HtcAbsListView2;

    new-instance v2, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter$1;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;Lcom/htc/sunny2/common/IterationDecodeTask;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAbsListView2;->post(Ljava/lang/Runnable;)Z

    .line 3166
    .end local v0           #oriTask:Lcom/htc/sunny2/common/IterationDecodeTask;
    :cond_0
    return-void
.end method

.method public onTaskStart(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 3137
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 2954
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->release()V

    .line 2955
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "firstVisibleItem"
    .parameter "lastVisibleItem"

    .prologue
    .line 3124
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    if-eqz v0, :cond_0

    .line 3126
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/common/IterationTaskThread;->setVisibleRange(II)V

    .line 3128
    :cond_0
    return-void
.end method

.method public workaround_BurstAdapterDataSetChanged()V
    .locals 1

    .prologue
    .line 2958
    .local p0, this:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;,"Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter<TIMediaDate;>;"
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2959
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mIterationTaskThread:Lcom/htc/sunny2/common/IterationTaskThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTaskThread;->cancelAllTask()V

    .line 2960
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$HorizontalAdapter;->mBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2961
    return-void
.end method
