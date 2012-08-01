.class public Lcom/htc/album/PaintManager/ImageAnimateDispatcher;
.super Ljava/lang/Object;
.source "ImageAnimateDispatcher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAnimate:I

.field private mIndex:I

.field private mIsAnimating:Z

.field private mIsIndexChange:Z

.field private mIsSRotateBegin:Z

.field private mIsSRotateEnd:Z

.field private mIsSRotating:Z

.field private mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

.field private mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    .line 12
    iput v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    .line 14
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    .line 19
    iput v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 20
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    .line 26
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 27
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 28
    iput-boolean v1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    return-void
.end method


# virtual methods
.method public doDispatch()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: -----------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: animate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    if-ne v3, v0, :cond_1

    .line 104
    iput-boolean v4, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 105
    iput-boolean v3, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 106
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateBegin()V

    .line 108
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: SRotateBegin: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    if-ne v3, v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    if-ne v3, v0, :cond_2

    .line 113
    iput-boolean v4, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    .line 114
    iput-boolean v4, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 115
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEnd()V

    .line 117
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: SRotateEnd: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-lez v0, :cond_4

    .line 124
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateBegin()V

    .line 127
    iput-boolean v3, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    .line 128
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: onAnimateBegin..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    :goto_1
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: -----------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    :cond_4
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    if-ne v3, v0, :cond_3

    .line 135
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    if-nez v0, :cond_5

    .line 137
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: onAnimateEnd..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEnd()V

    .line 146
    :goto_2
    iput-boolean v4, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsAnimating:Z

    goto :goto_1

    .line 142
    :cond_5
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FullscreenZoomListener][doDispatch]: onAnimateEndSwitched..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    invoke-interface {v0}, Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;->onAnimateEndSwitched()V

    .line 144
    iput-boolean v4, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    goto :goto_2
.end method

.method public isRotating()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotating:Z

    return v0
.end method

.method public setAnimateBegin()V
    .locals 3

    .prologue
    .line 80
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 81
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: setAnimateBegin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public setAnimateEnd()V
    .locals 3

    .prologue
    .line 85
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 86
    iget v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-gez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 88
    :cond_0
    sget-object v0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][FullscreenZoomListener][doDispatch]: setAnimateEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 37
    iput p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    .line 38
    return-void
.end method

.method public setListener(Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mListener:Lcom/htc/album/PaintManager/Interface/IImageAnimateListener;

    .line 34
    return-void
.end method

.method public setScreenRotateBegin()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateBegin:Z

    .line 69
    return-void
.end method

.method public setScreenRotateEnd()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsSRotateEnd:Z

    .line 77
    return-void
.end method

.method public setScrollState(II)Z
    .locals 5
    .parameter "nIndex"
    .parameter "nState"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, bResult:Z
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, p2, :cond_0

    move v1, v0

    .line 63
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 45
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iput p2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    .line 47
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    if-eq v2, p1, :cond_1

    .line 48
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIsIndexChange:Z

    .line 49
    :cond_1
    iput p1, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mIndex:I

    .line 51
    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-ne v2, v3, :cond_3

    .line 53
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 61
    :cond_2
    :goto_1
    sget-object v2, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][FullscreenZoomListener][doDispatch]: setScrollState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x1

    move v1, v0

    .line 63
    .restart local v1       #bResult:I
    goto :goto_0

    .line 55
    .end local v1           #bResult:I
    :cond_3
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mScrollState:I

    if-nez v2, :cond_2

    .line 57
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    .line 58
    iget v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    if-gez v2, :cond_2

    .line 59
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/album/PaintManager/ImageAnimateDispatcher;->mAnimate:I

    goto :goto_1
.end method
