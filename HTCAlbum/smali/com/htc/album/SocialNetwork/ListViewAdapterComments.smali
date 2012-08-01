.class public Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterComments.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewAdapterComments"


# instance fields
.field private mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

.field private mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

.field private mIsNewCommentEntry:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 52
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 54
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 577
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewAdapterComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 59
    invoke-virtual {p0, p3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setUIHandler(Landroid/os/Handler;)V

    .line 60
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private getShareImageShortSideLength(FFFZ)I
    .locals 4
    .parameter "fMaxLength"
    .parameter "fPhotoWidth"
    .parameter "fPhotoHeight"
    .parameter "isHeightLonger"

    .prologue
    const/4 v3, 0x0

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, iShortSide:I
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    cmpg-float v2, p2, v3

    if-ltz v2, :cond_0

    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    :cond_0
    move v1, v0

    .line 400
    .end local v0           #iShortSide:I
    .local v1, iShortSide:I
    :goto_0
    return v1

    .line 378
    .end local v1           #iShortSide:I
    .restart local v0       #iShortSide:I
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p4, :cond_3

    .line 380
    cmpl-float v2, p1, p3

    if-lez v2, :cond_2

    .line 382
    div-float v2, p1, p3

    div-float v2, p2, v2

    float-to-int v0, v2

    :goto_1
    move v1, v0

    .line 400
    .end local v0           #iShortSide:I
    .restart local v1       #iShortSide:I
    goto :goto_0

    .line 386
    .end local v1           #iShortSide:I
    .restart local v0       #iShortSide:I
    :cond_2
    div-float v2, p3, p1

    div-float v2, p2, v2

    float-to-int v0, v2

    goto :goto_1

    .line 391
    :cond_3
    cmpl-float v2, p1, p2

    if-lez v2, :cond_4

    .line 393
    div-float v2, p1, p2

    div-float v2, p3, v2

    float-to-int v0, v2

    goto :goto_1

    .line 397
    :cond_4
    div-float v2, p2, p1

    div-float v2, p3, v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method private setHeaderData(Landroid/view/View;I)V
    .locals 18
    .parameter "convertView"
    .parameter "nPos"

    .prologue
    .line 299
    const v1, 0x7f09005b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemTileImage;

    .line 301
    .local v10, imgViewOwnerAvatar:Lcom/htc/widget/HtcListItemTileImage;
    const/4 v14, 0x0

    .line 303
    .local v14, srcBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonIconURL()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 317
    :goto_0
    invoke-virtual {v10, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v1}, Lcom/htc/widget/HtcListItemTileImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const v1, 0x7f09005c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 321
    .local v16, textViewOwnerName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    const/4 v8, 0x0

    .line 327
    .local v8, bHasDescription:Z
    const v1, 0x7f09005e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 328
    .local v17, textViewPhotoName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 330
    :cond_1
    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :goto_1
    if-nez v8, :cond_2

    const v1, 0x7f09005d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_2
    const v1, 0x7f090060

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 342
    .local v11, imgViewSharedPhoto:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 343
    .local v13, sharePhotoBmp:Landroid/graphics/Bitmap;
    if-nez v13, :cond_6

    .line 345
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_PictureAndVideo(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    :goto_2
    const v1, 0x7f090061

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 369
    .local v15, textViewDate:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 370
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :cond_3
    return-void

    .line 309
    .end local v8           #bHasDescription:Z
    .end local v11           #imgViewSharedPhoto:Landroid/widget/ImageView;
    .end local v13           #sharePhotoBmp:Landroid/graphics/Bitmap;
    .end local v15           #textViewDate:Landroid/widget/TextView;
    .end local v16           #textViewOwnerName:Landroid/widget/TextView;
    .end local v17           #textViewPhotoName:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPersonIconURL()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_0

    .line 334
    .restart local v8       #bHasDescription:Z
    .restart local v16       #textViewOwnerName:Landroid/widget/TextView;
    .restart local v17       #textViewPhotoName:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const/4 v8, 0x1

    goto :goto_1

    .line 349
    .restart local v11       #imgViewSharedPhoto:Landroid/widget/ImageView;
    .restart local v13       #sharePhotoBmp:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 350
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v12, :cond_7

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v9, v1

    .line 353
    .local v9, iShareImageMaxLength:F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 355
    float-to-int v1, v9

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 356
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getShareImageShortSideLength(FFFZ)I

    move-result v1

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    .end local v9           #iShareImageMaxLength:F
    :cond_7
    :goto_3
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 360
    .restart local v9       #iShareImageMaxLength:F
    :cond_8
    float-to-int v1, v9

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 361
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getShareImageShortSideLength(FFFZ)I

    move-result v1

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3
.end method


# virtual methods
.method public getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    return-object v0
.end method

.method public getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x1

    .line 94
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 97
    :cond_0
    return v0
.end method

.method public getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, obj:Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 109
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 106
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "nPos"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    .line 164
    const/4 v12, 0x0

    .line 166
    .local v12, comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-nez p1, :cond_4

    const/4 v11, 0x1

    .line 169
    .local v11, bHeader:Z
    :goto_0
    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v12, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 171
    .restart local v12       #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    :cond_0
    const/4 v13, 0x0

    .line 172
    .local v13, currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez v11, :cond_1

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v13

    .line 174
    :cond_1
    if-nez p2, :cond_9

    .line 176
    if-eqz v11, :cond_5

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 230
    :cond_2
    :goto_1
    if-eqz v11, :cond_e

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    :goto_2
    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setHeaderData(Landroid/view/View;I)V

    .line 291
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListViweDefaultBackground(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    return-object p2

    .line 166
    .end local v11           #bHeader:Z
    .end local v13           #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 180
    .restart local v11       #bHeader:Z
    .restart local v13       #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_5
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v13, v3, :cond_6

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_7

    .line 183
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 185
    :cond_7
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030023

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 189
    :cond_8
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 196
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 198
    .local v10, aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-eqz v11, :cond_a

    .line 200
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03002e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 205
    :cond_a
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v13, v3, :cond_b

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_c

    .line 208
    :cond_b
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 214
    :cond_c
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_d

    .line 216
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030023

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 221
    :cond_d
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_2

    .line 223
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v10, v3, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 231
    .end local v10           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_e
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 234
    :cond_f
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v13, v3, :cond_10

    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_13

    .line 237
    :cond_10
    const/4 v15, 0x0

    .line 239
    .local v15, srcBmp:Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    .line 241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 254
    :goto_4
    const v3, 0x7f09004e

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItemTileImage;

    .line 255
    .local v14, imgViewAvatar:Lcom/htc/widget/HtcListItemTileImage;
    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    const v3, 0x7f09004f

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 258
    .local v17, txtViewName:Landroid/widget/TextView;
    if-eqz v17, :cond_11

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v12, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getFormatedComment(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_11
    const v3, 0x7f090051

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 266
    .local v16, txtViewDateTime:Landroid/widget/TextView;
    if-eqz v16, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v12, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getDateTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 245
    .end local v14           #imgViewAvatar:Lcom/htc/widget/HtcListItemTileImage;
    .end local v16           #txtViewDateTime:Landroid/widget/TextView;
    .end local v17           #txtViewName:Landroid/widget/TextView;
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatar()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_4

    .line 271
    .end local v15           #srcBmp:Landroid/graphics/Bitmap;
    :cond_13
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_14

    .line 273
    const v3, 0x7f090049

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/htc/widget/HtcProgressBar;

    .line 274
    .local v18, viewProgress:Lcom/htc/widget/HtcProgressBar;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcProgressBar;->setVisibility(I)V

    .line 276
    const v3, 0x7f090012

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/htc/widget/HtcListItem2LineText;

    .line 277
    .local v20, viewTextLoading1:Lcom/htc/widget/HtcListItem2LineText;
    const/16 v3, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 279
    const v3, 0x7f09004a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 280
    .local v21, viewTextLoading2:Landroid/widget/TextView;
    const v3, 0x7f0a00aa

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    const v4, 0x2030037

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 282
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 284
    .end local v18           #viewProgress:Lcom/htc/widget/HtcProgressBar;
    .end local v20           #viewTextLoading1:Lcom/htc/widget/HtcListItem2LineText;
    .end local v21           #viewTextLoading2:Landroid/widget/TextView;
    :cond_14
    sget-object v3, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v13, v3, :cond_3

    .line 286
    const v3, 0x7f090012

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 287
    .local v19, viewTextEmpty:Landroid/widget/TextView;
    const v3, 0x7f0a00ab

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    const v4, 0x2030037

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/16 :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 120
    const/4 v0, 0x1

    .line 123
    .local v0, bResult:Z
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCommentSize()I

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->isEnabled(I)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 135
    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 65
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 66
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 67
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onDestroy]: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearAllCache()V

    .line 86
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 88
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onDestroy]: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    .line 520
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onErrorConnection]: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 522
    return-void
.end method

.method public onErrorNoList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 526
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onErrorNoList]: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_0

    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 531
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 532
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 533
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 537
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 561
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 564
    :goto_0
    return-void

    .line 540
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestComments(Landroid/os/Message;)V

    goto :goto_0

    .line 543
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestAddComment(Landroid/os/Message;)V

    goto :goto_0

    .line 546
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncConnection()V

    goto :goto_0

    .line 549
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncListComplete()V

    goto :goto_0

    .line 552
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 555
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorConnection()V

    goto :goto_0

    .line 558
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorNoList()V

    goto :goto_0

    .line 537
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_5
        0x2761 -> :sswitch_6
        0x4e26 -> :sswitch_0
        0x4e30 -> :sswitch_1
        0x4e84 -> :sswitch_2
        0x4e89 -> :sswitch_4
        0x4e92 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 76
    return-void
.end method

.method public onRequestAddComment(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 468
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 469
    const/16 v3, 0x4e8d

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 471
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 473
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, 0x1

    new-array v1, v3, [Lcom/htc/opensense/social/data/Medium;

    .line 474
    .local v1, medium:[Lcom/htc/opensense/social/data/Medium;
    const-string v3, "photo_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Medium;

    aput-object v3, v1, v5

    .line 475
    const-string v3, "comment_update"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, szComment:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V

    .line 478
    const-string v3, "ListViewAdapterComments"

    const-string v4, "[HTCAlbum][ListViewAdapterComments][onRequestAddComment]: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void
.end method

.method public onRequestComments(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 446
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onRequestComments]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 455
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 456
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 461
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->requestCommentList()Z

    .line 462
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 72
    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 484
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onSyncConnection]: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 489
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncListComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 495
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[HTCAlbum][ListViewAdapterComments][onSyncListComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 502
    :cond_2
    const/16 v0, 0x2761

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 503
    const/16 v0, 0x4e21

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 504
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 506
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    if-ne v0, v1, :cond_0

    .line 508
    const/16 v0, 0x4e90

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 509
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    goto :goto_0
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 515
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 516
    return-void
.end method

.method public setScrollState(II)V
    .locals 0
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    .line 575
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 570
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    const/4 v0, 0x0

    .line 408
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getDataHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v1

    if-ne v5, v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 412
    const-string v1, "ListViewAdapterComments"

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: no account..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v1, 0x274f

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v1

    if-ne v5, v1, :cond_3

    .line 419
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    const-string v1, "ListViewAdapterComments"

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: no change just skip!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_2
    const/16 v1, 0x2750

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 430
    :cond_3
    const-string v1, "ListViewAdapterComments"

    const-string v2, "[HTCAlbum][ListViewAdapterComments][syncBackgroundService]: InitConnection.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 432
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v1, v5, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    const/16 v1, 0x2724

    invoke-virtual {p0, v1, v6, v4}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method
