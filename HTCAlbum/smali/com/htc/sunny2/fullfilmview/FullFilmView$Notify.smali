.class Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
.super Lcom/htc/sunny2/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Notify"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "NotifyDataChange"

.field private static final LOCK:Ljava/lang/Object;

.field private static sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;


# instance fields
.field private index:I

.field private listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

.field private next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1567
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->LOCK:Ljava/lang/Object;

    .line 1568
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    return-void
.end method

.method private constructor <init>(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)V
    .locals 2
    .parameter "index"
    .parameter "l"

    .prologue
    .line 1598
    const-string v0, "NotifyDataChange"

    const-string v1, "NotifyDataChange"

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny2/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1599
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    .line 1600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    .line 1601
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 1602
    return-void
.end method

.method static obtain(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
    .locals 4
    .parameter "index"
    .parameter "l"

    .prologue
    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, notify:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 1575
    :try_start_0
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    if-nez v2, :cond_0

    .line 1577
    new-instance v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;-><init>(ILcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;)V

    .end local v0           #notify:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
    .local v1, notify:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
    move-object v0, v1

    .line 1588
    .end local v1           #notify:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
    .restart local v0       #notify:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;
    :goto_0
    monitor-exit v3

    .line 1589
    return-object v0

    .line 1581
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    .line 1582
    sget-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    iget-object v2, v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    sput-object v2, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    .line 1584
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    .line 1585
    iput p0, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    .line 1586
    iput-object p1, v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    goto :goto_0

    .line 1588
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 1614
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    invoke-interface {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;->notifyMediaDataChangeIRTLock(I)V

    .line 1610
    :cond_0
    return-void
.end method

.method public onRemovedIRT()V
    .locals 2

    .prologue
    .line 1618
    sget-object v1, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1620
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->index:I

    .line 1621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->listener:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify$ChangeListener;

    .line 1622
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->next:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    .line 1623
    sput-object p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;->sHead:Lcom/htc/sunny2/fullfilmview/FullFilmView$Notify;

    .line 1624
    monitor-exit v1

    .line 1625
    return-void

    .line 1624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
