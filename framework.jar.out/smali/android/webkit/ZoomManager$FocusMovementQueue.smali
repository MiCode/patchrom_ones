.class Landroid/webkit/ZoomManager$FocusMovementQueue;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusMovementQueue"
.end annotation


# static fields
.field private static final QUEUE_CAPACITY:I = 0x5


# instance fields
.field private mIndex:I

.field private mQueue:[F

.field private mSize:I

.field private mSum:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1089
    iput-object p1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1090
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    .line 1091
    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    .line 1092
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    .line 1093
    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    .line 1094
    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1082
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$FocusMovementQueue;->add(F)V

    return-void
.end method

.method static synthetic access$1100(Landroid/webkit/ZoomManager$FocusMovementQueue;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 1082
    invoke-direct {p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->getSum()F

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/webkit/ZoomManager$FocusMovementQueue;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1082
    invoke-direct {p0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V

    return-void
.end method

.method private add(F)V
    .locals 3
    .parameter "focusDelta"

    .prologue
    .line 1106
    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    .line 1107
    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1108
    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    .line 1112
    :goto_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    iget v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    aput p1, v0, v1

    .line 1113
    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    .line 1114
    return-void

    .line 1110
    :cond_0
    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    iget-object v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    iget v2, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    aget v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    goto :goto_0
.end method

.method private clear()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1097
    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSize:I

    .line 1098
    iput v2, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    .line 1099
    iput v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mIndex:I

    .line 1100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1101
    iget-object v1, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mQueue:[F

    aput v2, v1, v0

    .line 1100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1103
    :cond_0
    return-void
.end method

.method private getSum()F
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Landroid/webkit/ZoomManager$FocusMovementQueue;->mSum:F

    return v0
.end method
