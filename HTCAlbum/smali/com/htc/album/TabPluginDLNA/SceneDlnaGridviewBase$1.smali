.class Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;
.super Ljava/lang/Object;
.source "SceneDlnaGridviewBase.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldState:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase.1;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;->oldState:I

    return-void
.end method


# virtual methods
.method public onLoadingStatusChange(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 74
    .local p0, this:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$1;,"Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase.1;"
    return-void
.end method
