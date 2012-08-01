.class Lcom/htc/album/AlbumMain/ActivityMainDropList$1;
.super Ljava/lang/Object;
.source "ActivityMainDropList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/AlbumMain/ActivityMainDropList;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/ActivityMainDropList;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$1;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$1;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/htc/album/AlbumMain/ActivityMainDropList$1;->this$0:Lcom/htc/album/AlbumMain/ActivityMainDropList;

    const/16 v1, 0x6b

    invoke-static {v0, v1}, Lcom/htc/wrap/android/app/HtcWrapActivity;->overrideRotateAnimation(Landroid/app/Activity;I)V

    goto :goto_0
.end method
