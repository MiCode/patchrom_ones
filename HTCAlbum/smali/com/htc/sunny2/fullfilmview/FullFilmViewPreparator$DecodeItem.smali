.class public Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;
.super Ljava/lang/Object;
.source "FullFilmViewPreparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DecodeItem"
.end annotation


# instance fields
.field private contentIdentifier:Ljava/lang/String;

.field private contentIndex:I

.field private iteratorHandle:I

.field private mHeight:I

.field private mIsScreenQuality:Z

.field private mSourceHeight:I

.field private mSourceWidth:I

.field private mWidth:I

.field private sourceType:I

.field private targetQuality:I

.field private textureHandle:Lcom/htc/sunny2/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;


# direct methods
.method protected constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2849
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2850
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    .line 2851
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    .line 2852
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;

    .line 2853
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->iteratorHandle:I

    .line 2854
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->sourceType:I

    .line 2855
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    .line 2857
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I

    .line 2858
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I

    .line 2859
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    .line 2860
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    .line 2861
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2849
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2849
    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2849
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2849
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2849
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;)Lcom/htc/sunny2/Texture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;Lcom/htc/sunny2/Texture;)Lcom/htc/sunny2/Texture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2849
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;

    return-object p1
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 2864
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIndex:I

    .line 2865
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->contentIdentifier:Ljava/lang/String;

    .line 2866
    iput-object v2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->textureHandle:Lcom/htc/sunny2/Texture;

    .line 2867
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->iteratorHandle:I

    .line 2868
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->sourceType:I

    .line 2869
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->targetQuality:I

    .line 2870
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mWidth:I

    .line 2871
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mHeight:I

    .line 2872
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceWidth:I

    .line 2873
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mSourceHeight:I

    .line 2874
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeItem;->mIsScreenQuality:Z

    .line 2875
    return-void
.end method
