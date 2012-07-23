.class public Lcom/scalado/base/Buffer;
.super Lcom/scalado/jni/JniPeer;
.source "Buffer.java"


# instance fields
.field private sourceBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 192
    invoke-static {}, Lcom/scalado/base/Buffer;->nativeClassInit()V

    .line 193
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 28
    if-gtz p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size can not be negativ"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateFromSize(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "byteBuffer"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 74
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The byte buffer byte array should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/base/Buffer;->nativeCreateFromBuffer([B)V

    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The byte buffer is not direct nor has a byte array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .parameter "byteBuffer"
    .parameter "direct"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 100
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateDirect(Ljava/nio/ByteBuffer;)V

    .line 101
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 44
    array-length v0, p1

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The buffer should not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCreateFromBuffer([B)V

    .line 50
    return-void
.end method

.method public static createDirect(Ljava/nio/ByteBuffer;)Lcom/scalado/base/Buffer;
    .locals 3
    .parameter "byteBuffer"

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The byte buffer is not direct"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    new-instance v0, Lcom/scalado/base/Buffer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/scalado/base/Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 93
    .local v0, buffer:Lcom/scalado/base/Buffer;
    iput-object p0, v0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 95
    return-object v0
.end method

.method private native nativeAsByteBuffer()Ljava/nio/ByteBuffer;
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCopyTo([B)V
.end method

.method private native nativeCreateDirect(Ljava/nio/ByteBuffer;)V
.end method

.method private native nativeCreateFromBuffer([B)V
.end method

.method private native nativeCreateFromByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method private native nativeCreateFromSize(I)V
.end method

.method private native nativeGet([BIII)V
.end method


# virtual methods
.method protected final asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/scalado/base/Buffer;->nativeAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/scalado/base/Buffer;->sourceBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public copyTo([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 136
    array-length v0, p1

    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The size of data must be the same as buffer.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lcom/scalado/base/Buffer;->nativeCopyTo([B)V

    .line 142
    return-void
.end method

.method public get([BIII)V
    .locals 3
    .parameter "dst"
    .parameter "dstOffset"
    .parameter "srcOffset"
    .parameter "length"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v2

    sub-int v1, v2, p3

    .line 154
    .local v1, srcRemaining:I
    array-length v2, p1

    sub-int v0, v2, p2

    .line 156
    .local v0, dstRemaining:I
    if-le p4, v1, :cond_0

    .line 157
    new-instance v2, Ljava/nio/BufferUnderflowException;

    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v2

    .line 158
    :cond_0
    if-le p4, v0, :cond_1

    .line 159
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 161
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/base/Buffer;->nativeGet([BIII)V

    .line 162
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/scalado/base/Buffer;->nativeGetSize()I

    move-result v0

    return v0
.end method

.method public native nativeGetSize()I
.end method
