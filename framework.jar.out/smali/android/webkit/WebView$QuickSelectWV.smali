.class Landroid/webkit/WebView$QuickSelectWV;
.super Landroid/webkit/WebView$QuickSelectAbs;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSelectWV"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;,
        Landroid/webkit/WebView$QuickSelectWV$EventHub;,
        Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;
    }
.end annotation


# static fields
.field static final AFTER_RESUME_SELECTION:I = 0x13e240

.field static final AFTER_WORD_SELECT:I = 0x13e23d

.field static final AUTO_EXTEND_TO_WORD:I = 0x13e1da

.field public static final COPY_BUTTON_ONLY:I = 0x1

.field public static final DEFAULT_BUTTON_SET:I = 0x46

.field static final END_CJKS_SELECT:I = 0x13e1d8

.field static final MSG_AFTER_WORD_SELECT:I = 0x13e9a8

.field static final MSG_AUTO_EXTEND:I = 0x13e9a9

.field static final MSG_PAUSE_SELECTION:I = 0x13e9ad

.field static final MSG_RESUME_SELECTION:I = 0x13e9ab

.field static final RESUME_SELECTION:I = 0x13e1db

.field static final SELECT_CJKS_WORD:I = 0x13e1d9

.field private static final SEL_MSG_END:I = 0x13ea0b

.field private static final SEL_MSG_START:I = 0x13e9a8

.field static final SHOW_QUICKACTION:I = 0x13e1dc

.field static final WORD_SELECT:I = 0x13e23e


# instance fields
.field basicActions:Landroid/webkit/BasicActions;

.field enableQuickAction:Z

.field first:Landroid/webkit/SelectionUnitInfo;

.field private mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

.field private mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

.field mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

.field mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

.field second:Landroid/webkit/SelectionUnitInfo;

.field showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

.field final synthetic this$0:Landroid/webkit/WebView;

.field tmp:Landroid/webkit/SelectionUnitInfo;

.field tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .parameter

    .prologue
    .line 13170
    iput-object p1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectAbs;-><init>(Landroid/webkit/WebView;)V

    .line 13171
    new-instance v0, Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$QuickSelectWV$EventHub;-><init>(Landroid/webkit/WebView$QuickSelectWV;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    .line 13179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    .line 13185
    new-instance v0, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;-><init>(Landroid/webkit/WebView$QuickSelectWV;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    .line 13188
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    .line 13189
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    .line 13190
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    .line 13191
    new-instance v0, Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Landroid/webkit/SelectionUnitInfo;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    .line 13567
    new-instance v0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;-><init>(Landroid/webkit/WebView$QuickSelectWV;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    .line 14095
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13170
    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$16400(Landroid/webkit/WebView$QuickSelectWV;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13170
    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17500(Landroid/webkit/WebView$QuickSelectWV;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13170
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    return-void
.end method

.method static synthetic access$17700(Landroid/webkit/WebView$QuickSelectWV;Landroid/webkit/SelectionUnitInfo;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13170
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView$QuickSelectWV;->doAutoExtend(Landroid/webkit/SelectionUnitInfo;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$17800(Landroid/webkit/WebView$QuickSelectWV;)Landroid/webkit/WebView$QuickSelectWV$EventHub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13170
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    return-object v0
.end method

.method private afterWordSelect(II)V
    .locals 9
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v4, 0x0

    .line 13221
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    if-nez v0, :cond_1

    .line 13222
    invoke-virtual {p0}, Landroid/webkit/WebView$QuickSelectWV;->selectionDone()V

    .line 13252
    :cond_0
    :goto_0
    return-void

    .line 13226
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->willSelectWord:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$15200(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->triggerByTouch:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$15300(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13227
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->willSelectWord:Z
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$15202(Landroid/webkit/WebView;Z)Z

    .line 13230
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13232
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0, v1}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13233
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13234
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v4}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 13236
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v0, :cond_2

    .line 13237
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 13239
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->needVibrate:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$15400(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13240
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->performHapticFeedback(I)Z

    .line 13241
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->needVibrate:Z
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$15402(Landroid/webkit/WebView;Z)Z

    goto :goto_0

    .line 13245
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v0}, Landroid/webkit/WebView;->access$15500(Landroid/webkit/WebView;)J

    move-result-wide v0

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v2}, Landroid/webkit/WebView;->access$15500(Landroid/webkit/WebView;)J

    move-result-wide v2

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v5, v5, Landroid/webkit/WebView;->mLastTouchX:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastTouchY:I

    int-to-float v6, v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 13248
    .local v8, fakeEV:Landroid/view/MotionEvent;
    invoke-virtual {p0, p1, p2, v8}, Landroid/webkit/WebView$QuickSelectWV;->onTouchEvent(IILandroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method private doAutoExtend(Landroid/webkit/SelectionUnitInfo;J)Z
    .locals 8
    .parameter "active"
    .parameter "updateTime"

    .prologue
    const/4 v5, 0x0

    .line 13765
    iget v6, p1, Landroid/webkit/SelectionUnitInfo;->node:I

    if-nez v6, :cond_1

    .line 13780
    :cond_0
    :goto_0
    return v5

    .line 13768
    :cond_1
    iget v1, p1, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    .line 13769
    .local v1, current:I
    iget-object v6, p1, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 13771
    .local v0, ch:C
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, p2

    .line 13773
    .local v2, timeDiff:J
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v4

    .line 13780
    .local v4, type:I
    if-ltz v1, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v6, v2, v6

    if-gez v6, :cond_0

    const/16 v6, 0x14

    if-lt v4, v6, :cond_2

    const/16 v6, 0x18

    if-le v4, v6, :cond_0

    :cond_2
    invoke-static {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .parameter "selectionRegion"

    .prologue
    .line 13600
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v2, p1}, Landroid/webkit/WebView;->access$15800(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 13601
    .local v1, selectionRect:Landroid/graphics/Rect;
    sget v2, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    sget v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    add-int/2addr v2, v3

    shr-int/lit8 v0, v2, 0x1

    .line 13602
    .local v0, offset:I
    const/4 v2, 0x0

    neg-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 13613
    return-object v1
.end method

.method private getUIdataFromWebcore()V
    .locals 6

    .prologue
    .line 13635
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->setEmpty()V

    .line 13636
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mNativeClass:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    #calls: Landroid/webkit/WebView;->nativeGetTextSelectionRegion(ILandroid/graphics/Region;)V
    invoke-static {v3, v4, v5}, Landroid/webkit/WebView;->access$16600(Landroid/webkit/WebView;ILandroid/graphics/Region;)V

    .line 13639
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    shr-int/lit8 v1, v3, 0x1

    .line 13640
    .local v1, minXDist:I
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    shr-int/lit8 v2, v3, 0x1

    .line 13641
    .local v2, minYDist:I
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v2, :cond_2

    const/4 v0, 0x1

    .line 13644
    .local v0, isSameChar:Z
    :goto_0
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13645
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 13646
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 13649
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 13651
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13656
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13657
    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13679
    :cond_1
    return-void

    .line 13641
    .end local v0           #isSameChar:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resumeSelectionImpl()V
    .locals 1

    .prologue
    .line 13727
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13733
    :goto_0
    return-void

    .line 13730
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13731
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13732
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelectionImplMsg()V

    goto :goto_0
.end method

.method private resumeSelectionImplMsg()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 13736
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v4}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 13738
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v4, v8}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Z)Z

    .line 13739
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v4, v4, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13741
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Landroid/webkit/WebView;->access$15700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13742
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13744
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13745
    iput-boolean v8, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13746
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->invalidate()V

    .line 13748
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Landroid/webkit/WebView;->access$16700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13749
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    #getter for: Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->isPriorAnchor:Z
    invoke-static {v4}, Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;->access$16800(Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    .line 13750
    .local v0, active:Landroid/webkit/SelectionUnitInfo;
    :goto_0
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 13751
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v2

    .line 13752
    .local v2, x:I
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    .line 13753
    .local v3, y:I
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    const/16 v5, 0x12c

    #calls: Landroid/webkit/WebView;->pinScrollTo(IIZI)Z
    invoke-static {v4, v2, v3, v8, v5}, Landroid/webkit/WebView;->access$16900(Landroid/webkit/WebView;IIZI)Z

    .line 13755
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const v5, 0x13e1dc

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 13757
    .local v1, m:Landroid/os/Message;
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const-wide/16 v5, 0x15e

    invoke-virtual {v4, v1, v5, v6}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13761
    .end local v1           #m:Landroid/os/Message;
    .end local v2           #x:I
    .end local v3           #y:I
    :goto_1
    return-void

    .line 13749
    .end local v0           #active:Landroid/webkit/SelectionUnitInfo;
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    goto :goto_0

    .line 13759
    .restart local v0       #active:Landroid/webkit/SelectionUnitInfo;
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto :goto_1
.end method


# virtual methods
.method protected doWordSelection(II)V
    .locals 6
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/16 v4, 0x61a9

    .line 13309
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13344
    :cond_0
    :goto_0
    return-void

    .line 13317
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$QuickSelectWV;->testSelect(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13324
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13326
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->quickContains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13330
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13331
    iget-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v1, :cond_3

    .line 13332
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13333
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 13335
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    move-result v0

    .line 13340
    .local v0, node:I
    if-eqz v0, :cond_0

    .line 13341
    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelectionMsg(II)V

    goto :goto_0
.end method

.method protected doWordSelectionMsg(II)V
    .locals 9
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const v7, 0x13e1d9

    const/4 v8, -0x2

    .line 13360
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v6, v6, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13421
    :goto_0
    return-void

    .line 13369
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v4, v4, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v4, :cond_4

    .line 13370
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4}, Landroid/webkit/SelectionUnitInfo;->selectLeft()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v5}, Landroid/webkit/SelectionUnitInfo;->selectRight()I

    move-result v5

    if-le v4, v5, :cond_2

    const/4 v2, 0x1

    .line 13371
    .local v2, isMultiline:Z
    :goto_1
    if-nez v2, :cond_3

    .line 13372
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4}, Landroid/webkit/SelectionUnitInfo;->selectLeft()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v5}, Landroid/webkit/SelectionUnitInfo;->selectRight()I

    move-result v5

    invoke-virtual {p0, v4, p2, v5, p2}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13409
    .end local v2           #isMultiline:Z
    :cond_1
    :goto_2
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static {v4, v5}, Landroid/webkit/WebView;->access$15700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13410
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13412
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 13413
    .local v0, dirty:Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13414
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 13415
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 13419
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v4, v0}, Landroid/webkit/WebView;->access$15800(Landroid/webkit/WebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13420
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/WebView;->postInvalidate(IIII)V

    goto :goto_0

    .line 13370
    .end local v0           #dirty:Landroid/graphics/Rect;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 13374
    .restart local v2       #isMultiline:Z
    :cond_3
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v4, v4, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 13377
    .local v1, dist:I
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4}, Landroid/webkit/SelectionUnitInfo;->selectLeft()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, v5, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget-object v6, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v6}, Landroid/webkit/SelectionUnitInfo;->selectRight()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v7, v7, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    goto :goto_2

    .line 13382
    .end local v1           #dist:I
    .end local v2           #isMultiline:Z
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v4, v4, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget v5, v5, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13383
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->removeMessages(I)V

    .line 13384
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v4, v5}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13385
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-static {v4, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 13386
    .local v3, m:Landroid/os/Message;
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13388
    iget-boolean v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v4, :cond_5

    .line 13389
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v4, v3}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 13391
    :cond_5
    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const-wide/16 v5, 0x14

    invoke-virtual {v4, v3, v5, v6}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method public handleSelectMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 13813
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 14028
    :cond_0
    :goto_0
    return-void

    .line 13816
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    sparse-switch v24, :sswitch_data_0

    .line 14025
    invoke-super/range {p0 .. p1}, Landroid/webkit/WebView$QuickSelectAbs;->handleSelectMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 13818
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-nez v24, :cond_3

    .line 13819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13825
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-nez v24, :cond_4

    .line 13826
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    goto/16 :goto_0

    .line 13821
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 13822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto :goto_1

    .line 13828
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    .line 13829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto/16 :goto_0

    .line 13834
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    #getter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 13837
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13838
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->update()V

    .line 13839
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e240

    invoke-static/range {v24 .. v25}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13844
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    move-result v16

    .line 13849
    .local v16, node:I
    if-eqz v16, :cond_0

    .line 13851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e23e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-static/range {v24 .. v27}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13858
    .end local v16           #node:I
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e23d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-static/range {v24 .. v27}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13862
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13865
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 13866
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13871
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13872
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13874
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 13875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13880
    :cond_6
    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    .line 13881
    .local v18, priorAnchor:Z
    :goto_4
    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v25, v24

    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView$QuickSelectWV;->doAutoExtend(Landroid/webkit/SelectionUnitInfo;J)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 13882
    const/4 v8, -0x1

    .local v8, cur:I
    const/16 v22, -0x1

    .line 13883
    .local v22, target:I
    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 13884
    .local v20, selRect:Landroid/graphics/Rect;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v25

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v24 .. v28}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13887
    const/4 v5, 0x0

    .line 13888
    .local v5, active:Landroid/webkit/SelectionUnitInfo;
    const/4 v7, 0x0

    .line 13889
    .local v7, animateExt:Z
    if-nez v18, :cond_c

    .line 13890
    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/Rect;->right:I

    .line 13891
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    .line 13892
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    .line 13901
    :goto_7
    move/from16 v0, v22

    if-eq v8, v0, :cond_d

    .line 13902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13903
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e1da

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-static {v0, v1, v8, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13867
    .end local v5           #active:Landroid/webkit/SelectionUnitInfo;
    .end local v7           #animateExt:Z
    .end local v8           #cur:I
    .end local v18           #priorAnchor:Z
    .end local v20           #selRect:Landroid/graphics/Rect;
    .end local v22           #target:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 13868
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto/16 :goto_2

    .line 13876
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    move/from16 v24, v0

    if-nez v24, :cond_6

    .line 13877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto/16 :goto_3

    .line 13880
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 13881
    .restart local v18       #priorAnchor:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v25, v24

    goto/16 :goto_5

    .line 13883
    .restart local v8       #cur:I
    .restart local v22       #target:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    goto/16 :goto_6

    .line 13895
    .restart local v5       #active:Landroid/webkit/SelectionUnitInfo;
    .restart local v7       #animateExt:Z
    .restart local v20       #selRect:Landroid/graphics/Rect;
    :cond_c
    move-object/from16 v0, v20

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 13896
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .line 13897
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    goto/16 :goto_7

    .line 13906
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e1dc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13910
    .end local v5           #active:Landroid/webkit/SelectionUnitInfo;
    .end local v7           #animateExt:Z
    .end local v8           #cur:I
    .end local v20           #selRect:Landroid/graphics/Rect;
    .end local v22           #target:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const v25, 0x13e1dc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 13917
    .end local v18           #priorAnchor:Z
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelectionImplMsg()V

    goto/16 :goto_0

    .line 13920
    :sswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelectionMsg(II)V

    goto/16 :goto_0

    .line 13923
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->afterWordSelect(II)V

    goto/16 :goto_0

    .line 13927
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    sget-object v24, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 13939
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    sget-object v11, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    .line 13940
    .local v11, detector:Lcom/htc/textselection/FetchSuggestionFromIME;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView;->access$17000(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 13941
    invoke-virtual {v11}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 13947
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/SelectionUnitInfo;

    .line 13948
    .local v23, targetInfo:Landroid/webkit/SelectionUnitInfo;
    move-object/from16 v0, v23

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->node:I

    move/from16 v17, v0

    .line 13949
    .local v17, pnode:I
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    iget v0, v0, Landroid/webkit/SelectionUnitInfo;->startIndex:I

    move/from16 v25, v0

    const-string v26, "1"

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v19

    .line 13955
    .local v19, ret:[I
    const/16 v24, 0x0

    aget v24, v19, v24

    const/16 v25, 0x1

    aget v25, v19, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 13958
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 13959
    .local v10, cursor2:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget v25, v19, v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v10}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13960
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 13961
    .local v9, cursor1:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v25, v19, v25

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2, v9}, Landroid/webkit/HTCWebCore;->nativeGetCharRect(IILandroid/graphics/Rect;)Z

    .line 13963
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v25

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v26

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13965
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static/range {v24 .. v25}, Landroid/webkit/WebView;->access$15700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13968
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13969
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static/range {v24 .. v28}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 13975
    .end local v9           #cursor1:Landroid/graphics/Rect;
    .end local v10           #cursor2:Landroid/graphics/Rect;
    .end local v11           #detector:Lcom/htc/textselection/FetchSuggestionFromIME;
    .end local v17           #pnode:I
    .end local v19           #ret:[I
    .end local v23           #targetInfo:Landroid/webkit/SelectionUnitInfo;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 13976
    .local v21, src:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 13977
    .restart local v22       #target:I
    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    const/4 v13, 0x1

    .line 13979
    .local v13, extendToRight:Z
    :goto_8
    if-eqz v13, :cond_11

    sub-int v24, v22, v21

    :goto_9
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3ea8f5c3

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v14, v0

    .line 13980
    .local v14, inc:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ge v14, v0, :cond_f

    .line 13981
    const/4 v14, 0x2

    .line 13983
    :cond_f
    if-eqz v13, :cond_12

    add-int v24, v21, v14

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 13985
    :goto_a
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 13986
    .local v12, extend:Landroid/graphics/Rect;
    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 13987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->centerY()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->centerY()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13988
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    #calls: Landroid/webkit/WebView;->nativeGetSelectionStart(Landroid/graphics/Rect;)V
    invoke-static/range {v24 .. v25}, Landroid/webkit/WebView;->access$15700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 13989
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/webkit/WebView;->nativeGetSelectionEnd(Landroid/graphics/Rect;)V

    .line 13990
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->getUIdataFromWebcore()V

    .line 13991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 14011
    :goto_b
    const/16 v24, -0x2

    const/16 v25, -0x2

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 14012
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    iget v0, v12, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    #calls: Landroid/webkit/WebView;->viewInvalidate(IIII)V
    invoke-static/range {v24 .. v28}, Landroid/webkit/WebView;->access$8200(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 13977
    .end local v12           #extend:Landroid/graphics/Rect;
    .end local v13           #extendToRight:Z
    .end local v14           #inc:I
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 13979
    .restart local v13       #extendToRight:Z
    :cond_11
    sub-int v24, v21, v22

    goto/16 :goto_9

    .line 13983
    .restart local v14       #inc:I
    :cond_12
    sub-int v24, v21, v14

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto/16 :goto_a

    .line 13995
    .restart local v12       #extend:Landroid/graphics/Rect;
    :cond_13
    invoke-static/range {p1 .. p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v15

    .line 13996
    .local v15, nextExtend:Landroid/os/Message;
    move/from16 v0, v21

    iput v0, v15, Landroid/os/Message;->arg1:I

    .line 13998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    move-object/from16 v24, v0

    const-wide/16 v25, 0x19

    move-object/from16 v0, v24

    move-wide/from16 v1, v25

    invoke-virtual {v0, v15, v1, v2}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14001
    if-eqz v13, :cond_14

    .line 14002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 14003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 14008
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 14009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->tmpRectF:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_b

    .line 14005
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 14006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_c

    .line 14017
    .end local v12           #extend:Landroid/graphics/Rect;
    .end local v13           #extendToRight:Z
    .end local v14           #inc:I
    .end local v15           #nextExtend:Landroid/os/Message;
    .end local v21           #src:I
    .end local v22           #target:I
    :sswitch_b
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView$QuickSelectWV;->resumeSelectionImpl()V

    goto/16 :goto_0

    .line 14020
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    .line 14021
    .local v6, anchor:Landroid/graphics/Rect;
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .line 13816
    :sswitch_data_0
    .sparse-switch
        0x61a9 -> :sswitch_2
        0x13e1d8 -> :sswitch_8
        0x13e1d9 -> :sswitch_9
        0x13e1da -> :sswitch_a
        0x13e1db -> :sswitch_b
        0x13e1dc -> :sswitch_c
        0x13e23d -> :sswitch_7
        0x13e23e -> :sswitch_6
        0x13e240 -> :sswitch_5
        0x13e9a8 -> :sswitch_3
        0x13e9a9 -> :sswitch_4
        0x13e9ab -> :sswitch_1
        0x13e9ad -> :sswitch_0
    .end sparse-switch
.end method

.method public hideQuickActions(Z)V
    .locals 2
    .parameter "isFastHide"

    .prologue
    .line 13591
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13593
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13594
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, p1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    .line 13596
    :cond_0
    return-void
.end method

.method public isSelectMsg(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 13807
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/webkit/WebView$QuickSelectAbs;->isSelectMsg(I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x13e9a8

    if-lt p1, v0, :cond_1

    const v0, 0x13ea0b

    if-gt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected myInit()V
    .locals 2

    .prologue
    .line 13297
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    .line 13300
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 13301
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->mAnchorTouchListener:Landroid/webkit/WebView$QuickSelectWV$AnchorTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 13302
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v0, :cond_0

    .line 13303
    new-instance v0, Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/WebView;->access$15600(Landroid/webkit/WebView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    .line 13304
    :cond_0
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$QuickSelectWV;->setQuickSelectionButtonFlag(I)V

    .line 13305
    return-void

    .line 13297
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(IILandroid/view/MotionEvent;)Z
    .locals 8
    .parameter "contentX"
    .parameter "contentY"
    .parameter "ev"

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f00

    const/4 v6, 0x1

    .line 13425
    const/4 v1, 0x1

    .line 13426
    .local v1, ret:Z
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/WebView$QuickSelectWV;->spacialDeNoise(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 13431
    .local v0, p:Landroid/graphics/PointF;
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 13541
    :goto_0
    return v1

    .line 13433
    :pswitch_0
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_0

    .line 13434
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13436
    iput-boolean v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 13438
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelection(II)V

    .line 13440
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    new-instance v3, Landroid/webkit/WebView$QuickSelectWV$1;

    invoke-direct {v3, p0, v0}, Landroid/webkit/WebView$QuickSelectWV$1;-><init>(Landroid/webkit/WebView$QuickSelectWV;Landroid/graphics/PointF;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13451
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$AutoScrollerWrapper;->findScrollableView(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 13453
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13454
    const/4 v1, 0x0

    .line 13456
    invoke-virtual {p0, v6}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    goto :goto_0

    .line 13461
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_2

    .line 13463
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$16000(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result p1

    .line 13464
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$16100(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result p2

    .line 13465
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelection(II)V

    .line 13468
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView$AutoScrollerWrapper;->doAutoSCroll(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13469
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->dismiss()V

    goto :goto_0

    .line 13471
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifierAnchor:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$16200(Landroid/webkit/WebView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3, v7}, Landroid/webkit/WebView$QuickSelectWV;->showMagnify(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 13474
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13475
    const/4 v1, 0x0

    .line 13477
    invoke-virtual {p0, v6}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    goto/16 :goto_0

    .line 13483
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_3

    .line 13485
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->selectionDone()V

    .line 13486
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 13493
    :cond_3
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->MOVABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-ne v2, v3, :cond_6

    .line 13494
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget v2, v2, Landroid/webkit/SelectionUnitInfo;->node:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    if-nez v2, :cond_5

    .line 13498
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->selectionDone()V

    .line 13499
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 13504
    :cond_5
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView$QuickSelectWV;->makeSelect(IIII)Z

    .line 13505
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2, v3}, Landroid/webkit/SelectionUnitInfo;->set(Landroid/webkit/SelectionUnitInfo;)V

    .line 13512
    :cond_6
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mAutoScrollerWrapper:Landroid/webkit/WebView$AutoScrollerWrapper;

    invoke-virtual {v2}, Landroid/webkit/WebView$AutoScrollerWrapper;->stopScroll()V

    .line 13515
    iput-boolean v7, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 13516
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v2}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 13519
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const v3, 0x13e1d9

    invoke-virtual {v2, v3}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 13520
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const v3, 0x13e1d8

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendEmptyMessageDelayed(IJ)Z

    .line 13526
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    invoke-virtual {v2}, Landroid/webkit/WebViewSelectionMethod;->getMode()Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    if-eq v2, v3, :cond_7

    .line 13528
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v7}, Landroid/webkit/WebView$QuickSelectWV;->showQuickActions(Landroid/graphics/Rect;I)V

    .line 13529
    :cond_7
    iput-boolean v6, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13531
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v3, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->EXTENDABLE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13536
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->postInvalidateDelayed(J)V

    goto/16 :goto_0

    .line 13522
    :cond_8
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    sget-object v2, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto :goto_1

    .line 13431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method pauseSelection()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 13683
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0}, Landroid/webkit/WebView;->access$14800(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13712
    :goto_0
    return-void

    .line 13686
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$QuickSelectWV;->hideQuickActions(Z)V

    .line 13687
    iput-boolean v4, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13688
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 13689
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setVisibility(I)V

    .line 13691
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v0, :cond_2

    .line 13692
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const v1, 0x13e9ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 13709
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0, v4}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Z)Z

    .line 13711
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 13694
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 13695
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    .line 13701
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-object v0, v0, Landroid/webkit/SelectionUnitInfo;->bound:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 13702
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HTCWebCore;->nativeFindTextBound(IILandroid/webkit/SelectionUnitInfo;Z)I

    goto :goto_1

    .line 13697
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v0, :cond_3

    .line 13698
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->trimToHead()V

    goto :goto_2

    .line 13704
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    iget-boolean v0, v0, Landroid/webkit/SelectionUnitInfo;->isOneChar:Z

    if-nez v0, :cond_1

    .line 13705
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v0}, Landroid/webkit/SelectionUnitInfo;->trimToTail()V

    goto :goto_1
.end method

.method resumeSelection()V
    .locals 5

    .prologue
    const-wide/16 v3, 0xc8

    const v2, 0x13e9ab

    const v1, 0x13e1db

    .line 13715
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v0, :cond_0

    .line 13716
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 13717
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 13724
    :goto_0
    return-void

    .line 13719
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->removeMessages(I)V

    .line 13721
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public selectionDone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13256
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    if-eqz v0, :cond_1

    .line 13257
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQSEventHandler:Landroid/webkit/WebView$QuickSelectWV$EventHub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$QuickSelectWV$EventHub;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13258
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 13259
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 13264
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    .line 13265
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v0, v2}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Z)Z

    .line 13266
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMethod:Landroid/webkit/WebViewSelectionMethod;

    sget-object v1, Landroid/webkit/WebViewSelectionMethod$SelectionMode;->NONE:Landroid/webkit/WebViewSelectionMethod$SelectionMode;

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewSelectionMethod;->setMode(Landroid/webkit/WebViewSelectionMethod$SelectionMode;)Z

    .line 13267
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 13268
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 13269
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 13270
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selStart:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 13271
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->selEnd:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 13272
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 13275
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    if-eqz v0, :cond_0

    .line 13276
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    invoke-interface {v0}, Landroid/webkit/WebView$WrapActions;->finish()V

    .line 13278
    :cond_0
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$QuickSelectWV;->setQuickSelectionButtonFlag(I)V

    .line 13280
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->needVibrate:Z
    invoke-static {v0, v2}, Landroid/webkit/WebView;->access$15402(Landroid/webkit/WebView;Z)Z

    .line 13283
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    .line 13284
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 13285
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    .line 13288
    iput-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    .line 13289
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v0}, Landroid/webkit/MagnifyView;->dismiss()V

    .line 13292
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v2}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    .line 13293
    return-void
.end method

.method public setQuickSelectionButtonFlag(I)V
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v1, 0x1

    .line 13546
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    if-nez v0, :cond_0

    .line 13547
    new-instance v0, Landroid/webkit/BasicActions;

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-direct {v0, v2}, Landroid/webkit/BasicActions;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    .line 13550
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    if-ne p1, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v2, Landroid/webkit/BasicActions;->copyButtonOnly:Z

    .line 13552
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->selectionUIType:I
    invoke-static {v0}, Landroid/webkit/WebView;->access$16300(Landroid/webkit/WebView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 13553
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    .line 13556
    :goto_1
    return-void

    .line 13550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 13555
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionModeCallback:Landroid/webkit/WebView$WrapActions;

    goto :goto_1
.end method

.method public setUpSelect()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 13195
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mSelectingText:Z
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$14802(Landroid/webkit/WebView;Z)Z

    .line 13196
    iput-boolean v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->mQSMode:Z

    .line 13197
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 13202
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->nativeHideCursor()V
    invoke-static {v2}, Landroid/webkit/WebView;->access$14900(Landroid/webkit/WebView;)V

    .line 13204
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->first:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13205
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->second:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13206
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->tmp:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13207
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->tmpForCJKWord:Landroid/webkit/SelectionUnitInfo;

    invoke-virtual {v2}, Landroid/webkit/SelectionUnitInfo;->reset()V

    .line 13209
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v3, Landroid/webkit/WebView;->mLastTouchX:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollX:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$15000(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 13210
    .local v0, cx:I
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    iget v3, v3, Landroid/webkit/WebView;->mLastTouchY:I

    iget-object v4, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mScrollY:I
    invoke-static {v4}, Landroid/webkit/WebView;->access$15100(Landroid/webkit/WebView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 13211
    .local v1, cy:I
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView$QuickSelectWV;->doWordSelection(II)V

    .line 13213
    iget-boolean v2, p0, Landroid/webkit/WebView$QuickSelectAbs;->ENABLE_MSG:Z

    if-eqz v2, :cond_0

    .line 13214
    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebView;->access$600(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const v3, 0x13e9a8

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 13218
    :goto_0
    return-void

    .line 13216
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView$QuickSelectWV;->afterWordSelect(II)V

    goto :goto_0
.end method

.method public showQuickActions(Landroid/graphics/Rect;I)V
    .locals 4
    .parameter "selectionRegion"
    .parameter "delay"

    .prologue
    .line 13571
    if-nez p1, :cond_0

    .line 13572
    iget-object p1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    .line 13574
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-boolean v1, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    .line 13575
    iget-boolean v0, p0, Landroid/webkit/WebView$QuickSelectWV;->enableQuickAction:Z

    if-eqz v0, :cond_1

    .line 13576
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->basicActions:Landroid/webkit/BasicActions;

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    .line 13579
    :cond_1
    if-gtz p2, :cond_2

    .line 13580
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectWV;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 13587
    :goto_0
    return-void

    .line 13583
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13584
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    iget-object v0, v0, Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;->selectionRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13585
    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectWV;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebView$QuickSelectWV;->showQuickActionDelay:Landroid/webkit/WebView$QuickSelectWV$ShowQuickActionDelay;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
