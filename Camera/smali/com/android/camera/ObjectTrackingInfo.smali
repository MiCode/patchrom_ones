.class public final Lcom/android/camera/ObjectTrackingInfo;
.super Ljava/lang/Object;
.source "ObjectTrackingInfo.java"


# instance fields
.field public bounds:Landroid/graphics/RectF;

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ObjectTrackingInfo;->bounds:Landroid/graphics/RectF;

    return-void
.end method
