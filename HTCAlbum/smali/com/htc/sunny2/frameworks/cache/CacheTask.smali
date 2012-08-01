.class public Lcom/htc/sunny2/frameworks/cache/CacheTask;
.super Ljava/lang/Object;
.source "CacheTask.java"


# static fields
.field public static final FLAG_ENABLE_PHOTO_DMC:I = 0x1

.field public static THUMBNAIL_VERSION:I


# instance fields
.field public mCacheBmp:Landroid/graphics/Bitmap;

.field public mCacheOutputFolder:Ljava/lang/String;

.field public mCacheOutputName:Ljava/lang/String;

.field public mCacheOutputPath:Ljava/lang/String;

.field public mCacheSet:I

.field public mCacheType:I

.field public mColorDepth:I

.field public mExtra:Ljava/lang/Object;

.field public mFactor:I

.field public mFileCacheSize:I

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mFlag:I

.field public mIdentifier:Ljava/lang/String;

.field public mModifyTime:J

.field public mPosition:I

.field public mUseCacheService:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x64

    sput v0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->THUMBNAIL_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 17
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    .line 18
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 21
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 22
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 23
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 24
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 26
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 32
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 41
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJI)V
    .locals 9
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 58
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJIZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JJIZ)V
    .locals 5
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "useService"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 17
    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileCacheSize:I

    .line 18
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 21
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 22
    iput-wide v3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 23
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 24
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 26
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mExtra:Ljava/lang/Object;

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mColorDepth:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheType:I

    .line 32
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputPath:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputFolder:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheOutputName:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 41
    iput v2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 63
    invoke-virtual/range {p0 .. p8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 53
    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/sunny2/frameworks/cache/CacheTask;-><init>(ILjava/lang/String;JJI)V

    .line 54
    return-void
.end method


# virtual methods
.method public getCacheBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCacheSet()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    return v0
.end method

.method public setFactor(I)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFactor:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetCacheName(Lcom/htc/sunny2/frameworks/cache/CacheTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateContent(ILjava/lang/String;JJI)V
    .locals 9
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"

    .prologue
    .line 82
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/htc/sunny2/frameworks/cache/CacheTask;->updateContent(ILjava/lang/String;JJIZ)V

    .line 83
    return-void
.end method

.method public updateContent(ILjava/lang/String;JJIZ)V
    .locals 1
    .parameter "cacheSet"
    .parameter "filePath"
    .parameter "modifyTime"
    .parameter "fileSize"
    .parameter "position"
    .parameter "useService"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mCacheSet:I

    .line 89
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFilePath:Ljava/lang/String;

    .line 90
    iput-wide p3, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mModifyTime:J

    .line 91
    iput-wide p5, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFileSize:J

    .line 92
    iput p7, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mPosition:I

    .line 93
    iput-boolean p8, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mUseCacheService:Z

    .line 94
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mIdentifier:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->GetMgr()Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/cache/CacheClientMgr;->updateExtraContent(Lcom/htc/sunny2/frameworks/cache/CacheTask;)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/frameworks/cache/CacheTask;->mFlag:I

    .line 99
    return-void
.end method
