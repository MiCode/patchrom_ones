.class public final enum Lcom/android/camera/TakingPictureFailedReason;
.super Ljava/lang/Enum;
.source "TakingPictureFailedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/TakingPictureFailedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/TakingPictureFailedReason;

.field public static final enum DriverFail:Lcom/android/camera/TakingPictureFailedReason;

.field public static final enum ImageQueueIsFull:Lcom/android/camera/TakingPictureFailedReason;

.field public static final enum InvalidState:Lcom/android/camera/TakingPictureFailedReason;

.field public static final enum LowInternalDataSpace:Lcom/android/camera/TakingPictureFailedReason;

.field public static final enum StorageError:Lcom/android/camera/TakingPictureFailedReason;

.field public static final enum Unknown:Lcom/android/camera/TakingPictureFailedReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/android/camera/TakingPictureFailedReason;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v3}, Lcom/android/camera/TakingPictureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    .line 6
    new-instance v0, Lcom/android/camera/TakingPictureFailedReason;

    const-string v1, "StorageError"

    invoke-direct {v0, v1, v4}, Lcom/android/camera/TakingPictureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/TakingPictureFailedReason;->StorageError:Lcom/android/camera/TakingPictureFailedReason;

    .line 7
    new-instance v0, Lcom/android/camera/TakingPictureFailedReason;

    const-string v1, "LowInternalDataSpace"

    invoke-direct {v0, v1, v5}, Lcom/android/camera/TakingPictureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/TakingPictureFailedReason;->LowInternalDataSpace:Lcom/android/camera/TakingPictureFailedReason;

    .line 8
    new-instance v0, Lcom/android/camera/TakingPictureFailedReason;

    const-string v1, "ImageQueueIsFull"

    invoke-direct {v0, v1, v6}, Lcom/android/camera/TakingPictureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/TakingPictureFailedReason;->ImageQueueIsFull:Lcom/android/camera/TakingPictureFailedReason;

    .line 9
    new-instance v0, Lcom/android/camera/TakingPictureFailedReason;

    const-string v1, "InvalidState"

    invoke-direct {v0, v1, v7}, Lcom/android/camera/TakingPictureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/TakingPictureFailedReason;->InvalidState:Lcom/android/camera/TakingPictureFailedReason;

    .line 10
    new-instance v0, Lcom/android/camera/TakingPictureFailedReason;

    const-string v1, "DriverFail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/TakingPictureFailedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/camera/TakingPictureFailedReason;->DriverFail:Lcom/android/camera/TakingPictureFailedReason;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/TakingPictureFailedReason;

    sget-object v1, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/TakingPictureFailedReason;->StorageError:Lcom/android/camera/TakingPictureFailedReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/TakingPictureFailedReason;->LowInternalDataSpace:Lcom/android/camera/TakingPictureFailedReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/TakingPictureFailedReason;->ImageQueueIsFull:Lcom/android/camera/TakingPictureFailedReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/TakingPictureFailedReason;->InvalidState:Lcom/android/camera/TakingPictureFailedReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/TakingPictureFailedReason;->DriverFail:Lcom/android/camera/TakingPictureFailedReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/TakingPictureFailedReason;->$VALUES:[Lcom/android/camera/TakingPictureFailedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/TakingPictureFailedReason;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/android/camera/TakingPictureFailedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/TakingPictureFailedReason;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/TakingPictureFailedReason;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/android/camera/TakingPictureFailedReason;->$VALUES:[Lcom/android/camera/TakingPictureFailedReason;

    invoke-virtual {v0}, [Lcom/android/camera/TakingPictureFailedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/TakingPictureFailedReason;

    return-object v0
.end method
