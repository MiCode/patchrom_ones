.class public Lcom/htc/album/modules/ui/ControlBarManager;
.super Ljava/lang/Object;
.source "ControlBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
    }
.end annotation


# static fields
.field public static final ANIMATION_FADEIN:I = 0x1

.field public static final ANIMATION_FADEOUT:I = 0x2

.field private static final ANIMATION_NONE:I = 0x0

.field public static final FOOTER_BAR:I = 0x2

.field public static final HEADER_BAR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ControlBarManager"


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mContext:Landroid/content/Context;

.field private final mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mEnableAnimation:Z

.field private mEnableFooterRight:Z

.field private mEnableInvalidateWhenShow:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

.field private final mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mHost:Lcom/htc/album/modules/ui/IControlBarHost;

.field private mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

.field private mIdentifier:Ljava/lang/String;

.field private final mInvalidateControlBarsAction:Ljava/lang/Runnable;

.field private mLifeCycle:I

.field private mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

.field private final mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mToggleControlBarsAction:Ljava/lang/Runnable;

.field private mUiThread:Ljava/lang/Thread;

.field private mWorkaroundFooterParent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "host"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 54
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 55
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 57
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 63
    iput-boolean v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    .line 66
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 68
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 73
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$1;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$1;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    .line 85
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$2;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$2;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 97
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$3;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$3;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 108
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$4;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 119
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$5;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$5;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 130
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$6;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$6;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    .line 141
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$7;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$7;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 154
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 156
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 158
    :cond_0
    iput-object p3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 159
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 161
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 162
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v0, footerlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;Z)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "host"
    .parameter "bEnableFooterRight"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 54
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 55
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 57
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 59
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 63
    iput-boolean v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 64
    iput-boolean v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    .line 66
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 68
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 73
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$1;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$1;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    .line 85
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$2;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$2;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 97
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$3;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$3;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 108
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$4;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 119
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$5;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$5;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 130
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$6;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$6;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    .line 141
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$7;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$7;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 170
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 172
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 174
    :cond_0
    iput-object p3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 175
    iput-boolean p4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 179
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 180
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v0, footerlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    iget-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    if-eqz v1, :cond_1

    .line 183
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doToggleControlBarsVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideHeaderControlBar(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideFooterControlBar(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/modules/ui/ControlBarManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    return-void
.end method

.method private createAnimation(II)Landroid/view/animation/Animation;
    .locals 5
    .parameter "nBarStyle"
    .parameter "animationStyle"

    .prologue
    const/4 v1, 0x2

    .line 729
    const/4 v0, 0x0

    .line 733
    .local v0, animation:Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 767
    :cond_0
    :goto_0
    return-object v0

    .line 737
    :pswitch_0
    if-ne v1, p1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v3, 0x121

    iget-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->create(Landroid/content/Context;Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 752
    :pswitch_1
    if-ne v1, p1, :cond_0

    .line 754
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v3, 0x122

    iget-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->create(Landroid/content/Context;Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCreateFooterBar(IZ)V
    .locals 7
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 437
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 438
    .local v3, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-ne v5, p1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    invoke-interface {v3}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 445
    .local v2, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v2, :cond_2

    .line 447
    invoke-interface {v3, p1}, Lcom/htc/album/modules/ui/IControlBarHost;->onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 448
    if-eqz v2, :cond_0

    .line 450
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->addControlBar(ILcom/htc/album/modules/ui/widget/BaseControlBar;)V

    .line 452
    :cond_2
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->switchControlBar(I)V

    .line 453
    if-eqz p2, :cond_3

    .line 454
    invoke-interface {v3, v2}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    .line 457
    :cond_3
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 458
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v6

    if-ne v5, v6, :cond_0

    .line 459
    :cond_4
    const/4 v4, 0x0

    .line 460
    .local v4, visibility:I
    const/4 v1, 0x1

    .line 461
    .local v1, animationStyle:I
    if-nez p2, :cond_5

    .line 462
    const/16 v4, 0x8

    .line 463
    const/4 v1, 0x0

    .line 465
    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v5, v4, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    goto :goto_0
.end method

.method private doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6
    .parameter "viewRoot"
    .parameter "contentView"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 392
    .local v0, host:Lcom/htc/album/modules/ui/IControlBarHost;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-interface {v0}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-nez v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 402
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 405
    :cond_2
    new-instance v3, Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 406
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v3, v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setOnControlBarClickListener(Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;)V

    .line 407
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setDrawingCacheEnabled(Z)V

    .line 410
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->attachTo(Landroid/view/ViewGroup;)V

    .line 411
    if-eqz p2, :cond_3

    instance-of v3, p2, Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    move-object v2, p2

    .line 413
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 414
    .local v2, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 415
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 417
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #relativeLayout:Landroid/widget/RelativeLayout;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 619
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    .line 621
    if-nez p2, :cond_0

    .line 622
    invoke-direct {p0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p2

    .line 623
    :cond_0
    invoke-direct {p0, v1, v2, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_2

    .line 628
    const-string v0, "ControlBarManager"

    const-string v1, "[HTCAlbum][ControlBarManager][doHideControlBars]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 631
    :cond_2
    return-void
.end method

.method private doHideFooterControlBar(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x2

    .line 641
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    .line 643
    if-nez p1, :cond_0

    .line 644
    invoke-direct {p0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p1

    .line 645
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 647
    :cond_1
    return-void
.end method

.method private doHideHeaderControlBar(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 638
    :cond_0
    return-void
.end method

.method private doInvalidateControlBars()V
    .locals 2

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->isControlBarShowing()Z

    move-result v0

    .line 512
    .local v0, currentVisibility:Z
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedBarId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateFooterBar(IZ)V

    .line 516
    :cond_0
    return-void
.end method

.method private doInvalidateFooterBar(IZ)V
    .locals 3
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 471
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 472
    .local v1, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 479
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v0, :cond_2

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    goto :goto_0

    .line 483
    :cond_2
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    goto :goto_0
.end method

.method private doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_2

    .line 561
    if-nez p2, :cond_1

    .line 562
    invoke-direct {p0, v3, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p2

    .line 563
    :cond_1
    invoke-direct {p0, v3, v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 565
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    if-ne v2, v0, :cond_3

    .line 567
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    .line 569
    :cond_3
    return-void
.end method

.method private doToggleControlBarsVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 663
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-nez v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v0

    .line 671
    .local v0, nVisibility:I
    if-nez v0, :cond_2

    .line 673
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 677
    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 682
    .end local v0           #nVisibility:I
    :cond_3
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 686
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v0

    .line 688
    .restart local v0       #nVisibility:I
    if-nez v0, :cond_4

    .line 690
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 694
    :cond_4
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setControlBarVisibility(III)V
    .locals 1
    .parameter "style"
    .parameter "visibility"
    .parameter "animationStyle"

    .prologue
    .line 772
    invoke-direct {p0, p1, p3}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 773
    return-void
.end method

.method private setControlBarVisibility(IILandroid/view/animation/Animation;)V
    .locals 7
    .parameter "style"
    .parameter "visibility"
    .parameter "animation"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, container:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 788
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 904
    :goto_1
    return-void

    .line 783
    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v3, :cond_0

    .line 784
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    goto :goto_0

    .line 796
    :cond_1
    instance-of v3, p3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_2

    .line 798
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 800
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 801
    .local v1, thisAnim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 803
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: cancel previous anim..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 809
    .end local v1           #thisAnim:Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v3

    if-ne v3, p2, :cond_3

    .line 811
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: skip same visibility..."

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 814
    :cond_3
    iget-boolean v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-eqz v3, :cond_6

    .line 816
    if-eqz p3, :cond_5

    .line 822
    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    if-ne v3, v4, :cond_4

    .line 824
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 827
    :sswitch_0
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 831
    :sswitch_1
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 839
    :cond_4
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: startAnimation... "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 863
    :goto_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    .line 867
    :sswitch_2
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE"

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 845
    :cond_5
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: no anim... "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 850
    :cond_6
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 853
    :sswitch_3
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 857
    :sswitch_4
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 873
    :sswitch_5
    if-eqz p3, :cond_7

    iget-boolean v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-nez v3, :cond_8

    .line 875
    :cond_7
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 880
    :cond_8
    move-object v2, v0

    .line 881
    .local v2, v:Landroid/view/View;
    new-instance v3, Lcom/htc/album/modules/ui/ControlBarManager$8;

    invoke-direct {v3, p0, v2}, Lcom/htc/album/modules/ui/ControlBarManager$8;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/View;)V

    invoke-virtual {p3, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_1

    .line 778
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 824
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 863
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_5
    .end sparse-switch

    .line 850
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 195
    return-void
.end method

.method public attach(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .parameter "root"
    .parameter "contentView"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method public attachActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V
    .locals 0
    .parameter "actionBar"

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 207
    return-void
.end method

.method public attachHostBar(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    invoke-direct {v0, p1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    goto :goto_0
.end method

.method public createControlBar(II)V
    .locals 1
    .parameter "style"
    .parameter "id"

    .prologue
    .line 247
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 251
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public createControlBar(IIZ)V
    .locals 0
    .parameter "style"
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 263
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final createControlBars(II)V
    .locals 1
    .parameter "headerId"
    .parameter "footerId"

    .prologue
    .line 520
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 521
    return-void
.end method

.method public createFooterBar(IZ)V
    .locals 2
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setVisible(Z)V

    .line 423
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setId(I)V

    .line 424
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->clearAnimation()V

    .line 225
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->detach()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 231
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 232
    return-void
.end method

.method public final getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 2

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedControlBar()Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    .end local v0           #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 493
    .restart local v0       #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_0
    return-object v0
.end method

.method public final getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    return-object v0
.end method

.method public final hideControlBar(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 650
    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    .line 651
    return-void
.end method

.method public final hideControlBars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 573
    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 574
    return-void
.end method

.method public final hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 579
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    .line 583
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 585
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 586
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final hideFooterControlBar(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 607
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 612
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 613
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final hideHeaderControlBar(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 593
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    .line 599
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 600
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 602
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final invalidateControlBars()V
    .locals 2

    .prologue
    .line 498
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public isControlBarShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 702
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 704
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v2, :cond_4

    .line 705
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 705
    goto :goto_0

    .line 709
    :cond_2
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_3

    .line 710
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 712
    :cond_3
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v2, :cond_4

    .line 713
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 715
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 236
    return-void
.end method

.method public setEnableAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    .line 725
    return-void
.end method

.method public setEnableInvalidateWhenShow(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 719
    iput-boolean p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 720
    return-void
.end method

.method public setHeaderControlStatusListener(Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHeaderStatusListener:Lcom/htc/album/modules/ui/widget/IControlBarHeaderListener;

    .line 244
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "szId"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public final showControlBar(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 525
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    .line 526
    return-void
.end method

.method public final showControlBars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 531
    return-void
.end method

.method public final showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 536
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 541
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 543
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final toggleControlBarsVisibility()V
    .locals 2

    .prologue
    .line 655
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    :goto_0
    return-void

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
