.class public Lcom/htc/album/addons/slideshow/CustomizedSettings;
.super Ljava/lang/Object;
.source "CustomizedSettings.java"


# static fields
.field private static final PREFIX_ORIEN_LAND:Ljava/lang/String; = "Land/"

.field private static final PREFIX_ORIEN_PORT:Ljava/lang/String; = "Port/"

.field private static final SLIDESHOW_STYLE_2D:Ljava/lang/String; = "slide_show.m10"

.field private static final SLIDESHOW_STYLE_FALLING_PHOTO:Ljava/lang/String; = "Photo_3dslideshow.m10"

.field private static final SLIDESHOW_STYLE_PHOTO_LOCK_SCREEN:Ljava/lang/String; = "Photo_fountain.m10"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/htc/album/addons/slideshow/CustomizedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/slideshow/CustomizedSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getScenePath(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "widgetStyle"
    .parameter "orientation"

    .prologue
    .line 22
    const-class v3, Lcom/htc/album/addons/slideshow/CustomizedSettings;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v0, scenePath:Ljava/lang/StringBuilder;
    const-string v2, "Port/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move v1, p1

    .line 28
    .local v1, style:I
    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 32
    :pswitch_0
    :try_start_1
    const-string v2, "slide_show.m10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 22
    .end local v0           #scenePath:Ljava/lang/StringBuilder;
    .end local v1           #style:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 37
    .restart local v0       #scenePath:Ljava/lang/StringBuilder;
    .restart local v1       #style:I
    :pswitch_1
    :try_start_2
    const-string v2, "Photo_fountain.m10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v2, "Photo_3dslideshow.m10"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
