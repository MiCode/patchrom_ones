.class public Lcom/htc/album/modules/collection/Collection;
.super Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;
.source "Collection.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/collection/Collection$QueueComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/album/modules/collection/Collection;",
        ">;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final BUCKET_ID_OTHERS:Ljava/lang/String; = null

.field protected static final CACHE_ROOT:Ljava/lang/String; = null

.field protected static CACHE_SETS:[I = null

.field public static final COLLECTIONS_PROJECTION:[Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/album/modules/collection/Collection;",
            ">;"
        }
    .end annotation
.end field

.field protected static final FILE_OP_TAG:Ljava/lang/String; = "[Collection][deleteCache]"

.field public static final KEY_DATA:Ljava/lang/String; = "key_data"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field protected static final QUEUE_SIZE:I = 0x4

.field public static final SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_IMAGES_PROJECTION:[Ljava/lang/String; = null

.field public static final SC_VIDEOS_PROJECTION:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mBucketId:Ljava/lang/String;

.field protected mContainsMediaTypes:I

.field protected transient mContext:Landroid/content/Context;

.field protected mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

.field protected mDisplayName:Ljava/lang/String;

.field protected mDrmImageCnt:I

.field protected mDrmVideoCnt:I

.field private mEnableImageListCache:Z

.field private mEnablePartialLoadImageList:Z

.field protected transient mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

.field protected mFilter:Ljava/lang/String;

.field protected mImageCnt:I

.field protected mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field protected mIsVisible:I

.field protected mPhotoCnt:I

.field protected transient mQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/htc/album/modules/collection/SimpleImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mShowLatest:Z

.field protected mSupportedMediaTypes:I

.field protected mType:Ljava/lang/String;

.field protected mVideoCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    const-class v0, Lcom/htc/album/modules/collection/Collection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->LOG_TAG:Ljava/lang/String;

    .line 66
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "datetaken"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 102
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "bucket_id"

    aput-object v1, v0, v4

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "favorite"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->SC_DRM_VIDEOS_PROJECTION:[Ljava/lang/String;

    .line 114
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "bucket_id"

    aput-object v1, v0, v3

    const-string v1, "bucket_display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->COLLECTIONS_PROJECTION:[Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    .line 159
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalStorageThumbnailPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_ROOT:Ljava/lang/String;

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CACHE_SETS:[I

    .line 553
    new-instance v0, Lcom/htc/album/modules/collection/Collection$1;

    invoke-direct {v0}, Lcom/htc/album/modules/collection/Collection$1;-><init>()V

    sput-object v0, Lcom/htc/album/modules/collection/Collection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 132
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 134
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 138
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 139
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 140
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 141
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 144
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 146
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 148
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 150
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 155
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 167
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 171
    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "bucketId"
    .parameter "displayName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 132
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 134
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 138
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 139
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 140
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 141
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 144
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 146
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 148
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 150
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 155
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 167
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 177
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 180
    iput-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 181
    invoke-virtual {p0, p1, p4}, Lcom/htc/album/modules/collection/Collection;->setProperties(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x4

    new-instance v2, Lcom/htc/album/modules/collection/Collection$QueueComparator;

    iget-boolean v3, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v2, v3}, Lcom/htc/album/modules/collection/Collection$QueueComparator;-><init>(Z)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    .line 183
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 184
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 566
    invoke-direct {p0}, Lcom/htc/album/ObjectWriter/SimpleObjectFormatter;-><init>()V

    .line 132
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 134
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 138
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 139
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 140
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 141
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 144
    const/16 v0, 0x11

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 146
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 148
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 150
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 155
    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 167
    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 567
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->readFromParcel(Landroid/os/Parcel;)V

    .line 568
    return-void
.end method

.method private static getQueryProjection(I)[Ljava/lang/String;
    .locals 1
    .parameter "mediaType"

    .prologue
    .line 478
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 480
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_IMAGES_PROJECTION:[Ljava/lang/String;

    .line 486
    :goto_0
    return-object v0

    .line 482
    :cond_0
    const/16 v0, 0x10

    if-ne p0, v0, :cond_1

    .line 484
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->SC_VIDEOS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 486
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelDeleting()V
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 779
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 780
    .local v0, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->cancelDeleting()V

    .line 782
    .end local v0           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/htc/album/modules/collection/Collection;)I
    .locals 2
    .parameter "collection"

    .prologue
    .line 443
    instance-of v0, p1, Lcom/htc/album/modules/collection/Collection;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 447
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/htc/album/modules/collection/Collection;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/album/modules/collection/Collection;->compareTo(Lcom/htc/album/modules/collection/Collection;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 608
    const/4 v0, 0x0

    return v0
.end method

.method public final doLoadData(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 3
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 690
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/modules/collection/Collection;->makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 691
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-ne v1, v2, :cond_1

    .line 693
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 697
    :cond_1
    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 698
    return-object v0
.end method

.method public final enableDataCache(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    .line 667
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 671
    :cond_0
    return-void
.end method

.method public equals(Lcom/htc/album/modules/collection/Collection;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 543
    iget-object v0, p1, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 544
    .local v0, cBucketId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 546
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 548
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "forceGet"

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 512
    :cond_1
    :goto_0
    return-object v0

    .line 505
    :cond_2
    const/4 v0, 0x0

    .line 506
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_1

    .line 508
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    sget v3, Lcom/htc/sunny2/frameworks/utils/LayoutConstants;->SQR_THUMBNAIL_SIZE:I

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v4, v4, Lcom/htc/album/modules/collection/SimpleImage;->mIsVideo:Z

    invoke-static {v2, v3, v4, v1}, Lcom/htc/opensense2/album/util/ImageUtils;->loadSquareBitmap(Ljava/lang/String;IZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getContainedMediaTypes()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoverImage()Lcom/htc/album/modules/collection/SimpleImage;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmImagePhotoCount()I
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_1

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 402
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmImageCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 405
    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_1
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    return v1
.end method

.method public getDrmVideoPhotoCount()I
    .locals 3

    .prologue
    .line 428
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_1

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 430
    .local v0, list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getNonDrmVideoCount()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 433
    .end local v0           #list:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_1
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    return v1
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    return-object v0
.end method

.method public getImagePhotoCount()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getImageCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 390
    :cond_1
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    return v0
.end method

.method public getMediaIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 377
    :cond_0
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    return v0
.end method

.method public getQueyParams()Landroid/content/Intent;
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v4, 0x1

    .line 457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v0, result:Landroid/content/Intent;
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/album/modules/collection/Collection;->getQueryProjection(I)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move v4, v7

    invoke-static/range {v0 .. v6}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->setQueryParamsForMediaType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_1
    return-object v0
.end method

.method public getSupportedMediaTypes()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    return v0
.end method

.method public getVideoPhotoCount()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v0, v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->getVideoCount()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 418
    :cond_1
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    return v0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, bResult:Z
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v2, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 277
    :cond_0
    return v0
.end method

.method protected makeList(Landroid/content/Context;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "context"
    .parameter "extras"

    .prologue
    .line 722
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 724
    .local v5, partialLoad:Landroid/os/Bundle;
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    if-ne v0, v1, :cond_0

    .line 725
    const-string v0, "key_count_image"

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    sub-int/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string v0, "key_count_video"

    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    sub-int/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    :cond_0
    iget v1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->makeList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public onDeleteIBT(Landroid/content/ContentResolver;I)V
    .locals 4
    .parameter "resolver"
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 735
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v2, p2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    .line 736
    .local v0, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v0, :cond_0

    .line 743
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/album/modules/collection/Collection;->removeFileCache(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V

    .line 741
    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    .line 742
    .local v1, imageUri:Landroid/net/Uri;
    invoke-virtual {p1, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFolderClicked(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;
    .locals 11
    .parameter "filePath"
    .parameter "mimeType"
    .parameter "dateModified"
    .parameter "degree"
    .parameter "mediaType"
    .parameter "fileSize"
    .parameter "rowId"

    .prologue
    .line 653
    new-instance v0, Lcom/htc/album/modules/collection/SimpleImage;

    iget-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/collection/SimpleImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .local v0, image:Lcom/htc/album/modules/collection/SimpleImage;
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 654
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    .line 656
    return-object v0
.end method

.method public readFrom(ZIILjava/lang/String;)V
    .locals 11
    .parameter "isVersionChange"
    .parameter "newVer"
    .parameter "oldVer"
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 858
    const/4 v2, 0x0

    .line 859
    .local v2, i:I
    invoke-virtual {p0, p4}, Lcom/htc/album/modules/collection/Collection;->removeAllHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 860
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 861
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 862
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 863
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 864
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 865
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 866
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 867
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 868
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 869
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 870
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 871
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 872
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 873
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 874
    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v7, :cond_0

    new-instance v7, Lcom/htc/album/TabPluginDevice/FolderImage;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 875
    :cond_0
    iget-object v8, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, p1, p2, p3, v7}, Lcom/htc/album/modules/collection/SimpleImage;->readFrom(ZIILjava/lang/String;)V

    move v2, v3

    .line 879
    .end local v3           #i:I
    .restart local v2       #i:I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 880
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    .line 881
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/htc/album/modules/collection/Collection;->removeListObjHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 882
    .local v5, mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 883
    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    if-nez v7, :cond_1

    new-instance v7, Ljava/util/PriorityQueue;

    const/4 v8, 0x4

    new-instance v9, Lcom/htc/album/modules/collection/Collection$QueueComparator;

    iget-boolean v10, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-direct {v9, v10}, Lcom/htc/album/modules/collection/Collection$QueueComparator;-><init>(Z)V

    invoke-direct {v7, v8, v9}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    .line 884
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 885
    .local v6, str:Ljava/lang/String;
    new-instance v0, Lcom/htc/album/TabPluginDevice/FolderImage;

    const/4 v7, 0x1

    invoke-direct {v0, p0, v7}, Lcom/htc/album/TabPluginDevice/FolderImage;-><init>(Lcom/htc/album/modules/collection/Collection;Z)V

    .line 886
    .local v0, FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    invoke-virtual {v0, p1, p2, p3, v6}, Lcom/htc/album/TabPluginDevice/FolderImage;->readFrom(ZIILjava/lang/String;)V

    .line 887
    iget-object v7, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v7, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 877
    .end local v0           #FI:Lcom/htc/album/TabPluginDevice/FolderImage;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #str:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2           #i:I
    .restart local v3       #i:I
    .restart local v5       #mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v2, v3

    .line 894
    .end local v3           #i:I
    .end local v5           #mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i:I
    :cond_4
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 12
    .parameter "in"

    .prologue
    const/4 v11, 0x1

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v11, :cond_1

    .line 586
    .local v11, hasCoverImage:Z
    :goto_0
    if-eqz v11, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, coverPath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, coverMime:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 591
    .local v3, coverDate:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 592
    .local v5, coverDegree:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 593
    .local v6, coverType:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 596
    .local v7, coverSize:J
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .local v9, rowId:J
    move-object v0, p0

    .line 598
    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 603
    .end local v1           #coverPath:Ljava/lang/String;
    .end local v2           #coverMime:Ljava/lang/String;
    .end local v3           #coverDate:J
    .end local v5           #coverDegree:I
    .end local v6           #coverType:I
    .end local v7           #coverSize:J
    .end local v9           #rowId:J
    :cond_0
    return-void

    .line 585
    .end local v11           #hasCoverImage:Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 786
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/modules/collection/Collection;->releaseListDataCache()V

    .line 791
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 792
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 793
    iput-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 794
    return-void
.end method

.method public final declared-synchronized releaseListDataCache()V
    .locals 3

    .prologue
    .line 681
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[releaseListDataCache] mImageListCache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageListCache:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_0
    monitor-exit p0

    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reloadData()V
    .locals 2

    .prologue
    .line 703
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    if-eqz v1, :cond_0

    .line 705
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    .line 706
    .local v0, listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->resetCancelDelete()V

    .line 707
    invoke-virtual {v0}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;->startRequery()Z

    .line 709
    .end local v0           #listUber:Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;
    :cond_0
    return-void
.end method

.method protected removeFileCache(Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 17
    .parameter "image"

    .prologue
    .line 747
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 748
    .local v2, filePath:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateModified()J

    move-result-wide v3

    .line 749
    .local v3, dateModified:J
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDateTaken()J

    move-result-wide v5

    .line 750
    .local v5, dateTaken:J
    invoke-interface/range {p1 .. p1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getSize()J

    move-result-wide v7

    .line 751
    .local v7, imageSize:J
    const/16 v14, 0x500

    .line 753
    .local v14, factor:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    if-nez v1, :cond_0

    .line 754
    new-instance v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    .line 756
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->getFactor()I

    move-result v14

    .line 757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/album/modules/collection/Collection;->mFileCacheManager:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    invoke-virtual/range {v1 .. v8}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->removeAll(Ljava/lang/String;JJJ)V

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/htc/album/modules/collection/Collection;->CACHE_ROOT:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v9, v2

    move-wide v10, v3

    invoke-static/range {v9 .. v14}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->makeCacheFilename(Ljava/lang/String;JIII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 768
    .local v16, oldPath:Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v15, file:Ljava/io/File;
    const-string v1, "[Collection][deleteCache]"

    invoke-static {v15, v1}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->exists(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    const-string v1, "[Collection][deleteCache]"

    invoke-static {v15, v1}, Lcom/htc/sunny2/frameworks/utils/FilePerformanceUtil;->delete(Ljava/io/File;Ljava/lang/String;)V

    .line 773
    :cond_1
    return-void
.end method

.method public setCoverImage(Lcom/htc/album/modules/collection/SimpleImage;)V
    .locals 11
    .parameter "cover"

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v1, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    iget-wide v3, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    iget v5, p1, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    iget v6, p1, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    iget-wide v7, p1, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    iget-wide v9, p1, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    goto :goto_0
.end method

.method public setDrmImagePhotoCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 410
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 411
    return-void
.end method

.method public setDrmVideoPhotoCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 438
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    .line 439
    return-void
.end method

.method public setEnablePartialLoadImageList(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/htc/album/modules/collection/Collection;->mEnablePartialLoadImageList:Z

    .line 718
    return-void
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setImagePhotoCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 395
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 396
    return-void
.end method

.method public setPhotoCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 382
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 383
    return-void
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "givenName"

    .prologue
    const/16 v4, 0x11

    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 192
    const-string v0, "com.htc.HTCAlbum.CAMERA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const v0, 0x7f0a004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 195
    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 261
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "com.htc.HTCAlbum.SNAPBOOTH"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const v0, 0x7f0a0052

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 200
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 202
    :cond_1
    const-string v0, "com.htc.HTCAlbum.PANORAMA_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    const v0, 0x7f0a0056

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 205
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 207
    :cond_2
    const-string v0, "com.htc.HTCAlbum.BURST_SHOTS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    const v0, 0x7f0a0057

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 210
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 212
    :cond_3
    const-string v0, "com.htc.HTCAlbum.MY_INKS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    const v0, 0x7f0a0053

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 215
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 217
    :cond_4
    const-string v0, "com.htc.HTCAlbum.SCRIBBLES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    const v0, 0x7f0a0054

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 220
    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto :goto_0

    .line 222
    :cond_5
    const-string v0, "com.htc.HTCAlbum.MY_FAVORITES"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    const v0, 0x7f0a0051

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 225
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 227
    :cond_6
    const-string v0, "com.htc.HTCAlbum.ALL_PHOTOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    const v0, 0x7f0a004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 230
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 232
    :cond_7
    const-string v0, "com.htc.HTCAlbum.ALL_VIDEOS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    const v0, 0x7f0a004f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 235
    const/16 v0, 0xf0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 237
    :cond_8
    const-string v0, "com.htc.HTCAlbum.ALL_DOWNLOADS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    const v0, 0x7f0a0050

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 240
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 242
    :cond_9
    const-string v0, "com.htc.HTCAlbum.ALL_3DS"

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 244
    const v0, 0x7f0a0055

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 245
    iput v3, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    goto/16 :goto_0

    .line 250
    :cond_a
    sget-object v0, Lcom/htc/album/modules/collection/Collection;->BUCKET_ID_OTHERS:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 252
    const v0, 0x7f0a0047

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 258
    :goto_1
    iput v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    goto/16 :goto_0

    .line 256
    :cond_b
    iput-object p2, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    goto :goto_1
.end method

.method public setSupportedMediaTypes(I)V
    .locals 0
    .parameter "newTypes"

    .prologue
    .line 491
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 492
    return-void
.end method

.method public setVideoPhotoCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 423
    iput p1, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    .line 424
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 357
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public showLatest()Z
    .locals 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 266
    .local v0, isShowLatest:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    .line 267
    return v0
.end method

.method public toFormatedString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 827
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v3, mQueueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    iget v4, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    iget-boolean v4, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    iget-boolean v4, p0, Lcom/htc/album/modules/collection/Collection;->mEnableImageListCache:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    if-eqz v4, :cond_1

    .line 847
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/collection/SimpleImage;

    .line 848
    .local v0, SI:Lcom/htc/album/modules/collection/SimpleImage;
    invoke-virtual {v0}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    .end local v0           #SI:Lcom/htc/album/modules/collection/SimpleImage;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    invoke-virtual {v4}, Lcom/htc/album/modules/collection/SimpleImage;->toFormatedString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 850
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/album/modules/collection/Collection;->capListObjHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {p0, v1}, Lcom/htc/album/modules/collection/Collection;->capAllHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toggleVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 366
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    if-ne v1, v0, :cond_0

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iput v1, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    goto :goto_0
.end method

.method public updateItemInfo(ILjava/lang/String;JLjava/lang/String;IJJ)V
    .locals 12
    .parameter "sourceType"
    .parameter "itemPath"
    .parameter "itemTime"
    .parameter "mimetype"
    .parameter "degree"
    .parameter "fileSize"
    .parameter "rowId"

    .prologue
    .line 284
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-nez v2, :cond_4

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-wide v4, p3

    move/from16 v6, p6

    move v7, p1

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 286
    invoke-virtual/range {v1 .. v11}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    .line 296
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_7

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p5

    move-wide v4, p3

    move/from16 v6, p6

    move v7, p1

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 298
    invoke-virtual/range {v1 .. v11}, Lcom/htc/album/modules/collection/Collection;->onNewSimpleImage(Ljava/lang/String;Ljava/lang/String;JIIJJ)Lcom/htc/album/modules/collection/SimpleImage;

    move-result-object v1

    .line 300
    .local v1, image:Lcom/htc/album/modules/collection/SimpleImage;
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 312
    :goto_1
    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    or-int/2addr v2, p1

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    .line 313
    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    .line 314
    if-eqz p5, :cond_1

    .line 315
    const/4 v2, 0x1

    const-string v3, "image"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_8

    .line 316
    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    .line 323
    :cond_1
    :goto_2
    const/16 v2, 0xe

    if-eq p1, v2, :cond_2

    const/16 v2, 0xe0

    if-ne p1, v2, :cond_3

    .line 324
    :cond_2
    const/4 v2, 0x1

    const-string v3, "image"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_9

    .line 325
    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    .line 331
    :cond_3
    :goto_3
    return-void

    .line 289
    .end local v1           #image:Lcom/htc/album/modules/collection/SimpleImage;
    :cond_4
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v2, p3, v2

    if-ltz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/htc/album/modules/collection/Collection;->mShowLatest:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v2, v2, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 292
    :cond_6
    iget-object v1, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    move-object v2, p2

    move-object/from16 v3, p5

    move-wide v4, p3

    move/from16 v6, p6

    move v7, p1

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    goto :goto_0

    .line 304
    :cond_7
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/album/modules/collection/SimpleImage;

    .restart local v1       #image:Lcom/htc/album/modules/collection/SimpleImage;
    move-object v2, p2

    move-object/from16 v3, p5

    move-wide v4, p3

    move/from16 v6, p6

    move v7, p1

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    .line 305
    invoke-virtual/range {v1 .. v11}, Lcom/htc/album/modules/collection/SimpleImage;->update(Ljava/lang/String;Ljava/lang/String;JIIJJ)V

    .line 307
    iget-object v2, p0, Lcom/htc/album/modules/collection/Collection;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 318
    :cond_8
    const/4 v2, 0x1

    const-string v3, "video"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_1

    .line 319
    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    goto :goto_2

    .line 327
    :cond_9
    const/4 v2, 0x1

    const-string v3, "video"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 328
    iget v2, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 617
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mPhotoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mImageCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mVideoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmImageCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mDrmVideoCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mContainsMediaTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget v0, p0, Lcom/htc/album/modules/collection/Collection;->mIsVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-object v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDateModified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 633
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mDegreeRotated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mMediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 638
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mCoverImage:Lcom/htc/album/modules/collection/SimpleImage;

    iget-wide v0, v0, Lcom/htc/album/modules/collection/SimpleImage;->mRowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 640
    :cond_0
    return-void

    .line 626
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
