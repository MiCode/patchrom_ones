.class final Lcom/android/camera/io/FileUtility$3;
.super Ljava/lang/Object;
.source "FileUtility.java"

# interfaces
.implements Lcom/android/camera/io/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/io/FileUtility;->getFileCount(Ljava/lang/String;ILcom/android/camera/io/FileUtility$InformationSource;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$maxFileCount:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput p1, p0, Lcom/android/camera/io/FileUtility$3;->val$maxFileCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4
    .parameter "fileName"
    .parameter "userState"

    .prologue
    const/4 v1, 0x0

    .line 409
    check-cast p2, [I

    .end local p2
    move-object v0, p2

    check-cast v0, [I

    .line 410
    .local v0, counter:[I
    aget v2, v0, v1

    iget v3, p0, Lcom/android/camera/io/FileUtility$3;->val$maxFileCount:I

    if-lt v2, v3, :cond_0

    .line 413
    :goto_0
    return v1

    .line 412
    :cond_0
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 413
    const/4 v1, 0x1

    goto :goto_0
.end method
