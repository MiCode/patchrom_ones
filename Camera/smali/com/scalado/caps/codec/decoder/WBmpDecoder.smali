.class public Lcom/scalado/caps/codec/decoder/WBmpDecoder;
.super Lcom/scalado/caps/Decoder;
.source "WBmpDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/codec/decoder/WBmpDecoder$1;,
        Lcom/scalado/caps/codec/decoder/WBmpDecoder$WBmpDecoderIterator;
    }
.end annotation


# instance fields
.field private stream:Lcom/scalado/stream/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 87
    invoke-static {}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->nativeClassInit()V

    .line 88
    return-void
.end method

.method private constructor <init>(Lcom/scalado/stream/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/scalado/stream/Stream;->isReadable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->nativeCreate(Lcom/scalado/stream/Stream;)V

    .line 52
    iput-object p1, p0, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->stream:Lcom/scalado/stream/Stream;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/caps/codec/decoder/WBmpDecoder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/scalado/caps/codec/decoder/WBmpDecoder;-><init>(Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public static create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
    .locals 1
    .parameter "stream"

    .prologue
    .line 69
    new-instance v0, Lcom/scalado/caps/codec/decoder/WBmpDecoder$WBmpDecoderIterator;

    invoke-direct {v0, p0}, Lcom/scalado/caps/codec/decoder/WBmpDecoder$WBmpDecoderIterator;-><init>(Lcom/scalado/stream/Stream;)V

    return-object v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/stream/Stream;)V
.end method


# virtual methods
.method public final getStream()Lcom/scalado/stream/Stream;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scalado/caps/codec/decoder/WBmpDecoder;->stream:Lcom/scalado/stream/Stream;

    return-object v0
.end method
