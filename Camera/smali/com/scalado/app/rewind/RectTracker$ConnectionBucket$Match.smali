.class Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Match"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mId:I

.field mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field mScore:F

.field final synthetic this$1:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "score"
    .parameter "tr"

    .prologue
    .line 3081
    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->this$1:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    .line 3077
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3078
    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    .line 3079
    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    .line 3080
    iput-object p4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3077
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;-><init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .parameter "o"

    .prologue
    .line 3083
    move-object v0, p1

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    .line 3084
    .local v0, m2:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v2, v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 3085
    const/4 v1, -0x1

    .line 3089
    :goto_0
    return v1

    .line 3086
    :cond_0
    iget v1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v2, v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 3087
    const/4 v1, 0x0

    goto :goto_0

    .line 3089
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
