.class final Landroid/app/NotificationButtonAction$1;
.super Ljava/lang/Object;
.source "NotificationButtonAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationButtonAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/NotificationButtonAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationButtonAction;
    .locals 1
    .parameter "parcel"

    .prologue
    .line 184
    new-instance v0, Landroid/app/NotificationButtonAction;

    invoke-direct {v0, p1}, Landroid/app/NotificationButtonAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/app/NotificationButtonAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/NotificationButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/NotificationButtonAction;
    .locals 1
    .parameter "size"

    .prologue
    .line 188
    new-array v0, p1, [Landroid/app/NotificationButtonAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/app/NotificationButtonAction$1;->newArray(I)[Landroid/app/NotificationButtonAction;

    move-result-object v0

    return-object v0
.end method