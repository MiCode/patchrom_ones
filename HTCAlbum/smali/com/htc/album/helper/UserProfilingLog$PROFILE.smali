.class public final enum Lcom/htc/album/helper/UserProfilingLog$PROFILE;
.super Ljava/lang/Enum;
.source "UserProfilingLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/UserProfilingLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFILE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/album/helper/UserProfilingLog$PROFILE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/album/helper/UserProfilingLog$PROFILE;

.field public static final enum SHAREVIA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

.field public static final enum SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

.field public static final enum SOURCE:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

.field public static final enum STORAGE:Lcom/htc/album/helper/UserProfilingLog$PROFILE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "SOURCE"

    invoke-direct {v0, v1, v2}, Lcom/htc/album/helper/UserProfilingLog$PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SOURCE:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    new-instance v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "STORAGE"

    invoke-direct {v0, v1, v3}, Lcom/htc/album/helper/UserProfilingLog$PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->STORAGE:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    new-instance v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "SHAREVIA"

    invoke-direct {v0, v1, v4}, Lcom/htc/album/helper/UserProfilingLog$PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHAREVIA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    new-instance v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const-string v1, "SLIDESHOW"

    invoke-direct {v0, v1, v5}, Lcom/htc/album/helper/UserProfilingLog$PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SOURCE:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->STORAGE:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SHAREVIA:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->SLIDESHOW:Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->$VALUES:[Lcom/htc/album/helper/UserProfilingLog$PROFILE;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/album/helper/UserProfilingLog$PROFILE;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    return-object v0
.end method

.method public static values()[Lcom/htc/album/helper/UserProfilingLog$PROFILE;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/album/helper/UserProfilingLog$PROFILE;->$VALUES:[Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    invoke-virtual {v0}, [Lcom/htc/album/helper/UserProfilingLog$PROFILE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/album/helper/UserProfilingLog$PROFILE;

    return-object v0
.end method
