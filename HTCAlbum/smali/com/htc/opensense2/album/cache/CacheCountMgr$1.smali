.class Lcom/htc/opensense2/album/cache/CacheCountMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "CacheCountMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/cache/CacheCountMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/cache/CacheCountMgr;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/cache/CacheCountMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/htc/opensense2/album/cache/CacheCountMgr$1;->this$0:Lcom/htc/opensense2/album/cache/CacheCountMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 558
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HTC_MEDIACACHE_SCANFINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-static {v2}, Lcom/htc/opensense2/album/cache/CacheCountMgr;->ResetCalculateAll(Z)V

    .line 561
    invoke-static {v2}, Lcom/htc/opensense2/album/cache/CacheInfoDMC;->ResetCalculateAll(Z)V

    .line 562
    invoke-static {v2}, Lcom/htc/opensense2/album/cache/CarModeCache;->ResetCalculateAll(Z)V

    .line 564
    :cond_0
    return-void
.end method
