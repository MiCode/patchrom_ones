.class public Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
.super Ljava/lang/Object;
.source "SunnyActionBar.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;


# static fields
.field private static final EFFECTIVE_GESTURE_RATIO:D = 0.2

.field private static final LOG_TAG:Ljava/lang/String; = "SunnyActionBar"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

.field private mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

.field private mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

.field private mProgressLoadingState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActionBar;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;)V
    .locals 4
    .parameter "activity"
    .parameter "actionBar"
    .parameter "mode"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 40
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 41
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 42
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 43
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 45
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 48
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 49
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    .line 82
    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 87
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, p3, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/app/ActionBar;->hide()V

    .line 90
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 91
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 93
    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 94
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 95
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 97
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 3
    .parameter "context"
    .parameter "actionBar"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 40
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 41
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 42
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 43
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 45
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 48
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 49
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    .line 65
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 66
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 67
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v0, p1, p2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 72
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 76
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 77
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/widget/ActionBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarClicked(Landroid/view/View;)V

    return-void
.end method

.method public static actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2
    .parameter "activity"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    instance-of v1, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    if-eqz v1, :cond_0

    .line 59
    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    .end local p0
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method private initGestureDetector(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 456
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    .line 489
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 466
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 467
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 468
    .local v1, windowSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 469
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    .line 472
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private onActionBarClicked(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 452
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 112
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dismissDropList()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V

    .line 350
    :cond_0
    return-void
.end method

.method public enableHTCLandscape(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 358
    const-string v0, "SunnyActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyActionBar][enableHTCLandscape]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public enableSearchMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    if-nez v1, :cond_0

    .line 402
    new-instance v1, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v1, p1}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 403
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 404
    .local v0, container:Lcom/htc/widget/ActionBarContainer;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 406
    .end local v0           #container:Lcom/htc/widget/ActionBarContainer;
    :cond_0
    if-eqz p2, :cond_1

    .line 407
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->switchContainer()V

    .line 408
    :cond_1
    return-void
.end method

.method public gestureRegion()D
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    return-wide v0
.end method

.method public getActionBarContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v0
.end method

.method public getActionBarText()Lcom/htc/widget/ActionBarText;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method public getVisibility()I
    .locals 4

    .prologue
    .line 168
    const/16 v0, 0x8

    .line 169
    .local v0, nVisibility:I
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v2, v3, :cond_2

    .line 171
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v2, :cond_0

    move v1, v0

    .line 186
    .end local v0           #nVisibility:I
    .local v1, nVisibility:I
    :goto_0
    return v1

    .line 174
    .end local v1           #nVisibility:I
    .restart local v0       #nVisibility:I
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    :cond_1
    :goto_1
    move v1, v0

    .line 186
    .end local v0           #nVisibility:I
    .restart local v1       #nVisibility:I
    goto :goto_0

    .line 178
    .end local v1           #nVisibility:I
    .restart local v0       #nVisibility:I
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_3

    move v1, v0

    .line 179
    .end local v0           #nVisibility:I
    .restart local v1       #nVisibility:I
    goto :goto_0

    .line 181
    .end local v1           #nVisibility:I
    .restart local v0       #nVisibility:I
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActionBarTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 433
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public searchPane()Lcom/htc/widget/ActionBarSearch;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method public setBackUpEnabled(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_0
.end method

.method public setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setDropdownListContent(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V
    .locals 2
    .parameter "bEnable"
    .parameter "listener"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    .line 311
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 312
    if-eqz p1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V
    .locals 2
    .parameter "bEnable"
    .parameter "activity"
    .parameter "actionBarGesture"

    .prologue
    .line 100
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    .line 104
    invoke-direct {p0, p2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->initGestureDetector(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V
    .locals 3
    .parameter "nMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0

    .line 198
    :cond_2
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0
.end method

.method public setPrimaryText(I)V
    .locals 2
    .parameter "nResId"

    .prologue
    .line 206
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_2

    .line 208
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 4
    .parameter "szText"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 231
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_4

    .line 233
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 251
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 253
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 257
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProgressVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    if-eq p1, v0, :cond_0

    .line 286
    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 289
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "nResId"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "szText"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTopMargin(Landroid/app/Activity;I)V
    .locals 8
    .parameter "activity"
    .parameter "nMargin"

    .prologue
    .line 367
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 368
    .local v0, decorView:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 370
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 372
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_2

    .line 374
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4       #viewGroup:Landroid/view/ViewGroup;
    if-nez v4, :cond_1

    .line 372
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 377
    :cond_1
    instance-of v5, v4, Lcom/htc/widget/ActionBarContainer;

    if-eqz v5, :cond_0

    .line 379
    const-string v5, "SunnyActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SunnyActionBar][setTopMargin]: found ActionBarContainer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_2
    if-nez v4, :cond_3

    .line 385
    const-string v5, "SunnyActionBar"

    const-string v6, "[HTCAlbum][SunnyActionBar][setTopMargin]: can not find ActionBarContainer..."

    invoke-static {v5, v6}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_1
    return-void

    .line 389
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 390
    .local v3, param:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, p2, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 391
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "nVisibility"

    .prologue
    const/4 v2, 0x0

    .line 128
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 146
    if-nez p1, :cond_3

    .line 151
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method
