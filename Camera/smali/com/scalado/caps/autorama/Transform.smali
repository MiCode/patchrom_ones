.class public Lcom/scalado/caps/autorama/Transform;
.super Lcom/scalado/jni/JniPeer;
.source "Transform.java"


# static fields
.field public static final DEFAULT_DIRECTION_TRIGGER:I = 0xa

.field public static final DEFAULT_OVERLAP:I = 0x2d


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 156
    invoke-static {}, Lcom/scalado/caps/autorama/Transform;->nativeClassInit()V

    .line 157
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/scalado/caps/autorama/Transform;->nativeCreate()V

    .line 35
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/scalado/jni/JniPeer;-><init>()V

    .line 51
    invoke-direct {p0}, Lcom/scalado/caps/autorama/Transform;->nativeCreate()V

    .line 52
    new-instance v0, Lcom/scalado/base/Vector;

    invoke-direct {v0, p1, p2}, Lcom/scalado/base/Vector;-><init>(II)V

    new-instance v1, Lcom/scalado/base/Size;

    invoke-direct {v1, p3, p4}, Lcom/scalado/base/Size;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/scalado/caps/autorama/Transform;->setTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V

    .line 53
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate()V
.end method

.method private native nativeGetDirection(I)I
.end method

.method private native nativeGetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V
.end method

.method private native nativeIsTimeToCapture(II)Z
.end method

.method private native nativeSetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V
.end method


# virtual methods
.method public getDirection(I)Lcom/scalado/caps/autorama/Direction;
    .locals 2
    .parameter "minimumDelta"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/scalado/caps/autorama/Transform;->nativeGetDirection(I)I

    move-result v0

    .line 111
    .local v0, value:I
    invoke-static {v0}, Lcom/scalado/caps/autorama/Direction;->translateIntToDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    return-object v1
.end method

.method public getTranslationDelta()Lcom/scalado/base/Vector;
    .locals 2

    .prologue
    .line 77
    new-instance v1, Lcom/scalado/base/Vector;

    invoke-direct {v1}, Lcom/scalado/base/Vector;-><init>()V

    .line 78
    .local v1, dxdy:Lcom/scalado/base/Vector;
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 79
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-direct {p0, v1, v0}, Lcom/scalado/caps/autorama/Transform;->nativeGetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V

    .line 80
    return-object v1
.end method

.method public getTranslationDimensions()Lcom/scalado/base/Size;
    .locals 2

    .prologue
    .line 89
    new-instance v1, Lcom/scalado/base/Vector;

    invoke-direct {v1}, Lcom/scalado/base/Vector;-><init>()V

    .line 90
    .local v1, dxdy:Lcom/scalado/base/Vector;
    new-instance v0, Lcom/scalado/base/Size;

    invoke-direct {v0}, Lcom/scalado/base/Size;-><init>()V

    .line 91
    .local v0, dims:Lcom/scalado/base/Size;
    invoke-direct {p0, v1, v0}, Lcom/scalado/caps/autorama/Transform;->nativeGetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V

    .line 92
    return-object v0
.end method

.method public isTimeToCapture(Lcom/scalado/caps/autorama/Direction;I)Z
    .locals 1
    .parameter "direction"
    .parameter "overlap"

    .prologue
    .line 130
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Direction;->getValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/scalado/caps/autorama/Transform;->nativeIsTimeToCapture(II)Z

    move-result v0

    return v0
.end method

.method public setTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "dxdy"
    .parameter "dimensions"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/autorama/Transform;->nativeSetTranslation(Lcom/scalado/base/Vector;Lcom/scalado/base/Size;)V

    .line 69
    return-void
.end method
