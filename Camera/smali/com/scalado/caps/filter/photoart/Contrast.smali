.class public final Lcom/scalado/caps/filter/photoart/Contrast;
.super Lcom/scalado/caps/Filter;
.source "Contrast.java"


# instance fields
.field private contrast:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 73
    invoke-static {}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeClassInit()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 24
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Contrast;->setHasActiveFilter(Z)V

    .line 26
    return-void
.end method

.method private native nativeBegin(Lcom/scalado/caps/Decoder;)V
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeEnd(Lcom/scalado/caps/Decoder;)V
.end method

.method private native nativeSet(Lcom/scalado/caps/Decoder;F)V
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Contrast;->contrast:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeBegin(Lcom/scalado/caps/Decoder;)V

    .line 58
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Contrast;->contrast:F

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 59
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 60
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeEnd(Lcom/scalado/caps/Decoder;)V

    .line 65
    return-void
.end method

.method public set(F)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeSet(Lcom/scalado/caps/Decoder;F)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 44
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Contrast;->contrast:F

    .line 46
    return-void
.end method
