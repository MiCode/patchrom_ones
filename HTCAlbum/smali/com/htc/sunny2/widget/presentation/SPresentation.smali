.class public Lcom/htc/sunny2/widget/presentation/SPresentation;
.super Lcom/htc/sunny2/widget/presentation/SAdapterView;
.source "SPresentation.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/widget/presentation/SPresentation$16;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$PRESENTATION_ORIENTATION;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;,
        Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    }
.end annotation


# static fields
.field protected static final ANIMATION_BOUNCING:I = 0x4

.field protected static final ANIMATION_FLING:I = 0x1

.field protected static final ANIMATION_HOMING:I = 0x3

.field protected static final ANIMATION_ROTATE_SELF:I = 0x5

.field protected static final ANIMATION_SCROLL:I = 0x2

.field protected static final ANIMATION_UNKNOW:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STATE_BOUNCING:I = 0x7

.field public static final STATE_BOUNCING_END:I = 0x8

.field public static final STATE_FLING:I = 0x3

.field public static final STATE_FLING_END:I = 0x4

.field public static final STATE_HOMING:I = 0x5

.field public static final STATE_HOMING_END:I = 0x6

.field public static final STATE_IDLE:I = 0x12

.field public static final STATE_MOUSE_DOWN:I = 0x0

.field public static final STATE_MOUSE_PAN:I = 0x2

.field public static final STATE_MOUSE_UP:I = 0x1

.field public static final STATE_ROTATE_SELF:I = 0xb

.field public static final STATE_ROTATE_SELF_END:I = 0xc

.field public static final STATE_SCROLL:I = 0x9

.field public static final STATE_SCROLL_END:I = 0xa

.field public static final STATE_UNKNOW:I = -0x1


# instance fields
.field protected DURATION_BOUNCING:I

.field protected DURATION_FLING:I

.field protected DURATION_HOMING:I

.field protected DURATION_ROTATE_SELF:I

.field protected DURATION_SCROLL_NEXT:I

.field protected DURATION_SCROLL_PREVIOUS:I

.field protected DURATION_SCROLL_TO:I

.field protected TIMESLOT_INTERVAL:I

.field protected TIMESLOT_INTERVAL_HALF:I

.field protected mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

.field protected mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

.field protected mBlockScroll:Z

.field protected mClipSizeB:I

.field protected mClipSizeL:I

.field protected mClipSizeR:I

.field protected mClipSizeT:I

.field protected mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

.field protected mContainerCount:I

.field protected mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

.field protected mDataCount:I

.field protected mDataUpdated:Z

.field protected mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

.field protected mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

.field protected mDisplacement:F

.field protected mEnableHitFeedback:Z

.field protected mEnableScroll:Z

.field protected mEnableTouchEvent:Z

.field protected mEnabledAnimation:Z

.field protected mEnabledBlockScroll:Z

.field protected mEnabledLargeSensorArea:Z

.field protected mEnabledOpeningAnimation:Z

.field protected mEnabledReflection:Z

.field protected mEnlargeSensorRatioH:F

.field protected mEnlargeSensorRatioW:F

.field protected mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

.field protected mFakeNextUpdateIndex:I

.field protected mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

.field private mHashCode:I

.field protected mHitFeedbackRatio:F

.field protected mIsBouncingState:Z

.field protected mIsContainerCountChanged:Z

.field protected mIsFirstRender:Z

.field private mIsPressed:Z

.field protected mIsSingleTapUp:Z

.field protected mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

.field protected mItemHeight:I

.field protected mItemScrollRatio:F

.field protected mItemWidth:I

.field protected mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

.field protected mListHeight:I

.field protected mListHeight_H:I

.field protected mListWidth:I

.field protected mListWidth_H:I

.field protected mOldSelectedPos:I

.field protected mOpeningAnimationStart:Z

.field protected mPerformOpeningAnimation:Z

.field protected mPresentationState:I

.field protected mPressContainerId:I

.field protected mPressStartSelectedPos:I

.field protected mReflectionColorB:I

.field protected mReflectionColorG:I

.field protected mReflectionColorR:I

.field protected mReflectionGap:I

.field protected mReflectionHeight:I

.field protected mRenderThread:Lcom/htc/sunny2/RenderThread;

.field protected mReorderItem:I

.field protected mReorderRegion:I

.field protected mRotateClockwise:Z

.field protected mSelectedPos:I

.field protected mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

.field protected mShiftOneItem:Z

.field protected mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

.field protected mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

.field protected mSurfaceViewHeight:I

.field protected mSurfaceViewHeight_H:I

.field protected mSurfaceViewWidth:I

.field protected mSurfaceViewWidth_H:I

.field protected mTimeSlot:I

.field protected mVisibleContainerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V
    .locals 6
    .parameter "context"
    .parameter "sContext"

    .prologue
    const/16 v5, 0x26

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 362
    invoke-direct {p0, p1, p2, v3}, Lcom/htc/sunny2/widget/presentation/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 228
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 230
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    .line 231
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    .line 233
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    .line 234
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    .line 235
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    .line 236
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    .line 237
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 238
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    .line 239
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 240
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 243
    const/16 v0, 0xfa

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    .line 244
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 245
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    .line 246
    const/16 v0, 0x1e

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    .line 247
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    .line 248
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    .line 249
    const/16 v0, 0x28

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_HOMING:I

    .line 250
    const/16 v0, 0x8c

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_FLING:I

    .line 251
    const/16 v0, 0x32

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    .line 295
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    .line 296
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 297
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    .line 298
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    .line 300
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    .line 301
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    .line 303
    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 304
    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    .line 305
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    .line 308
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    .line 309
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    .line 310
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 311
    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOldSelectedPos:I

    .line 312
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    .line 313
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    .line 314
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    .line 315
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableScroll:Z

    .line 316
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 318
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    .line 319
    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    .line 321
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .line 322
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    .line 323
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    .line 324
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    .line 325
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 327
    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    .line 328
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 331
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    .line 332
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    .line 333
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    .line 334
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    .line 335
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight_H:I

    .line 336
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    .line 341
    iput-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 344
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    .line 345
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    .line 346
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    .line 347
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    .line 348
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 349
    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorR:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorG:I

    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorB:I

    .line 350
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    .line 352
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    .line 353
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    .line 354
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 355
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    .line 356
    const v0, 0x3f733333

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    .line 359
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    .line 363
    invoke-static {}, Lcom/htc/sunny2/SunnyEnvironment;->instance()Lcom/htc/sunny2/SunnyEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;IIIII)V
    .locals 7
    .parameter "context"
    .parameter "sContext"
    .parameter "nViewWidth"
    .parameter "nViewHeight"
    .parameter "nItemWidth"
    .parameter "nItemHeight"
    .parameter "nContainerCount"

    .prologue
    const/16 v6, 0x26

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 367
    invoke-direct {p0, p1, p2, v4}, Lcom/htc/sunny2/widget/presentation/SAdapterView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Z)V

    .line 228
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 230
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    .line 231
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    .line 233
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    .line 234
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    .line 235
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    .line 236
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    .line 237
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 238
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    .line 239
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 240
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 243
    const/16 v1, 0xfa

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    .line 244
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 245
    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    .line 246
    const/16 v1, 0x1e

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    .line 247
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    .line 248
    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    .line 249
    const/16 v1, 0x28

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_HOMING:I

    .line 250
    const/16 v1, 0x8c

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_FLING:I

    .line 251
    const/16 v1, 0x32

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    .line 295
    new-instance v1, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    .line 296
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 297
    new-instance v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    .line 298
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    .line 300
    new-instance v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    .line 301
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    .line 303
    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 304
    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    .line 305
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    .line 308
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    .line 309
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    .line 310
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 311
    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOldSelectedPos:I

    .line 312
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    .line 313
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    .line 314
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    .line 315
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableScroll:Z

    .line 316
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 318
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    .line 319
    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    .line 321
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .line 322
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    .line 323
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    .line 324
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    .line 325
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 327
    iput v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    .line 328
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 331
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    .line 332
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    .line 333
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    .line 334
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    .line 335
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight_H:I

    .line 336
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    .line 341
    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 344
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    .line 345
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    .line 346
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    .line 347
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    .line 348
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 349
    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorR:I

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorG:I

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionColorB:I

    .line 350
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    .line 352
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    .line 353
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    .line 354
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 355
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    .line 356
    const v1, 0x3f733333

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    .line 357
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    .line 358
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    .line 359
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    .line 369
    iput p5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    .line 370
    iput p6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    .line 371
    iput p3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    .line 372
    iput p4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    .line 373
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    .line 374
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight_H:I

    .line 375
    move v0, p7

    .line 376
    .local v0, nCount:I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 377
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set container count as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". It should be an odd number."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    add-int/lit8 v0, v0, -0x1

    .line 380
    :cond_0
    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    .line 382
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initDefaultLayout()V

    .line 383
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getSpriteIndex(I)I
    .locals 1
    .parameter "nTag"

    .prologue
    const/4 v0, -0x1

    .line 729
    if-gt p1, v0, :cond_0

    .line 730
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method private getSpriteTag(I)I
    .locals 1
    .parameter "nSpriteIndex"

    .prologue
    .line 725
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHashCode:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected static interpolateLinear(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 2736
    cmpl-float v1, v0, p3

    if-nez v1, :cond_0

    .line 2738
    :goto_0
    return v0

    :cond_0
    div-float v0, p2, p3

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    goto :goto_0
.end method

.method protected static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 766
    add-int/lit8 p0, p0, -0x1

    .line 767
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 768
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 769
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 770
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 771
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 772
    add-int/lit8 v0, p0, 0x1

    return v0
.end method


# virtual methods
.method protected Get2DY(I)I
    .locals 1
    .parameter "n3DY"

    .prologue
    .line 2569
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    sub-int/2addr v0, p1

    return v0
.end method

.method protected Get3DX(I)I
    .locals 1
    .parameter "n2DX"

    .prologue
    .line 2577
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected Get3DY(I)I
    .locals 1
    .parameter "n2DY"

    .prologue
    .line 2573
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    sub-int v0, p1, v0

    return v0
.end method

.method protected animateView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2742
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    if-nez v0, :cond_1

    .line 2747
    :cond_0
    :goto_0
    return-void

    .line 2744
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2745
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method public applyAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2218
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2239
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->animate()V

    .line 2240
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    if-ne v1, v0, :cond_1

    .line 2242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 2243
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "update and render"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_1
    return-void

    .line 2227
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimation()V

    .line 2228
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 2231
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onRotateSelf()V

    .line 2232
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 2219
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createResource()V
    .locals 4

    .prologue
    .line 2146
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createResource + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    invoke-super {p0}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->createResource()V

    .line 2148
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 2149
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHandler-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getNodeId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRenderThread()Lcom/htc/sunny2/RenderThread;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    .line 2151
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 2152
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2153
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 2158
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers()V

    .line 2159
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createResource -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    return-void
.end method

.method protected destroyAllResource()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 735
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_6

    .line 736
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v1, v0, v2

    .line 737
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_0

    .line 736
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 739
    :cond_0
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    if-eqz v4, :cond_1

    .line 740
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4}, Lcom/htc/sunny2/Texture;->release()V

    .line 741
    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    .line 743
    :cond_1
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_2

    .line 744
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    .line 745
    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    .line 747
    :cond_2
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_3

    .line 748
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    .line 749
    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    .line 751
    :cond_3
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_4

    .line 752
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    .line 753
    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    .line 755
    :cond_4
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v4, :cond_5

    .line 756
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v4}, Lcom/htc/sunny2/Sprite;->release()V

    .line 757
    iput-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    .line 760
    :cond_5
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->removeView(Lcom/htc/sunny2/view/SView;)V

    goto :goto_1

    .line 763
    .end local v0           #arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_6
    return-void
.end method

.method protected enableAnimation(Z)V
    .locals 0
    .parameter "bEnalbed"

    .prologue
    .line 2335
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    .line 2336
    return-void
.end method

.method public enableHitFeedback(Z)V
    .locals 0
    .parameter "enableHitFeedback"

    .prologue
    .line 2344
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    .line 2345
    return-void
.end method

.method public enableLargeSensorArea(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 721
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledLargeSensorArea:Z

    .line 722
    return-void
.end method

.method public enableScroll(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2367
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableScroll:Z

    .line 2368
    return-void
.end method

.method public enabledLayoutAnimateIn(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 645
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    .line 646
    return-void
.end method

.method public enabledReflection(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    .line 718
    return-void
.end method

.method public enabledTouchEvent(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2363
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    .line 2364
    return-void
.end method

.method public enlargeSensorArea(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 698
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    .line 699
    return-void
.end method

.method public enlargeSensorAreaWidth(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 708
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    .line 709
    return-void
.end method

.method public fling(I)V
    .locals 1
    .parameter "nVelocity"

    .prologue
    .line 1512
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$11;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1519
    return-void
.end method

.method protected flingW(I)V
    .locals 11
    .parameter "nVelocity"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1523
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1524
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1631
    :goto_0
    return-void

    .line 1528
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 1530
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-eq v9, v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v9, v6, :cond_2

    .line 1531
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    .line 1535
    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1536
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1537
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v9, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1539
    iget-object v6, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    .line 1540
    .local v1, VELOCITY_MIN:I
    const/16 v0, 0xbb8

    .line 1541
    .local v0, VELOCITY_MAX:I
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x2

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1542
    .local v2, nMaxPosOffset:I
    int-to-float v6, v2

    sub-int v7, v0, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 1543
    .local v4, nPosOffset:I
    move v3, v4

    .line 1545
    .local v3, nOrgPosOffset:I
    if-lez p1, :cond_b

    .line 1546
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_3

    .line 1547
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 1549
    :cond_3
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v4

    if-gtz v6, :cond_9

    .line 1550
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_8

    .line 1551
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v4, v6, -0x1

    .line 1581
    :cond_4
    :goto_1
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v5, v6, v4

    .line 1584
    .local v5, nTimeSlotOffset:I
    if-lez p1, :cond_12

    .line 1585
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1586
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_10

    .line 1587
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1605
    :goto_2
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v9, v6, :cond_15

    .line 1606
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1612
    :goto_3
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v6, :cond_16

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_16

    .line 1613
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1617
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1619
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v6, :cond_6

    .line 1620
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v7, 0x0

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1622
    :cond_6
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v6, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v6, :cond_17

    .line 1623
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1553
    .end local v5           #nTimeSlotOffset:I
    :cond_8
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_1

    .line 1555
    :cond_9
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_4

    .line 1556
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_a

    .line 1557
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 1559
    :cond_a
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v7, v7, -0x1

    sub-int v4, v6, v7

    goto :goto_1

    .line 1563
    :cond_b
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_c

    .line 1564
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1566
    :cond_c
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/2addr v7, v4

    if-gt v6, v7, :cond_e

    .line 1567
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_d

    .line 1568
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v6, v7

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 1570
    :cond_d
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int v4, v6, v7

    goto/16 :goto_1

    .line 1572
    :cond_e
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/2addr v6, v4

    if-gtz v6, :cond_4

    .line 1573
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_f

    .line 1574
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto/16 :goto_1

    .line 1576
    :cond_f
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto/16 :goto_1

    .line 1588
    .restart local v5       #nTimeSlotOffset:I
    :cond_10
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_11

    .line 1589
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1591
    :cond_11
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1594
    :cond_12
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1595
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_13

    .line 1596
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1597
    :cond_13
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_14

    .line 1598
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v7, v5

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1600
    :cond_14
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v5, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_2

    .line 1608
    :cond_15
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_FLING:I

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_3

    .line 1614
    :cond_16
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v6, v7, :cond_5

    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v6, v7, :cond_5

    .line 1615
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v10, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto/16 :goto_4

    .line 1627
    :cond_17
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1628
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v7, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v7, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1630
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_0
.end method

.method protected freeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2165
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 2167
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    .line 2169
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    if-eqz v0, :cond_0

    .line 2170
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;->release()V

    .line 2171
    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHandler:Lcom/htc/sunny2/widget/presentation/SPresentation$SHandler;

    .line 2174
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    .line 2175
    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .line 2176
    invoke-super {p0}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->freeResource()V

    .line 2177
    return-void
.end method

.method public getAnimationDirection()Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    return-object v0
.end method

.method protected getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .locals 6
    .parameter "nDataIndex"

    .prologue
    const/4 v4, 0x0

    .line 1976
    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1985
    :goto_0
    return-object v1

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1979
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 1978
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1981
    :cond_2
    iget v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 1985
    goto :goto_0
.end method

.method protected getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .locals 6
    .parameter "nUIPos"

    .prologue
    const/4 v4, 0x0

    .line 1963
    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_0

    move-object v1, v4

    .line 1972
    :goto_0
    return-object v1

    .line 1965
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1966
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 1965
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1968
    :cond_2
    iget v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_3
    move-object v1, v4

    .line 1972
    goto :goto_0
.end method

.method protected getContainerId(I)I
    .locals 4
    .parameter "nHitSpriteId"

    .prologue
    const/4 v2, -0x1

    .line 2555
    if-ne v2, p1, :cond_1

    move v0, v2

    .line 2565
    :cond_0
    :goto_0
    return v0

    .line 2558
    :cond_1
    invoke-static {p1}, Lcom/htc/sunny2/Sprite;->search(I)Lcom/htc/sunny2/Sprite;

    move-result-object v1

    .line 2559
    .local v1, sprite:Lcom/htc/sunny2/Sprite;
    if-nez v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 2561
    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny2/Sprite;->getUserFlag()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSpriteIndex(I)I

    move-result v0

    .line 2562
    .local v0, nSpriteIndex:I
    if-ltz v0, :cond_3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt v0, v3, :cond_0

    :cond_3
    move v0, v2

    .line 2565
    goto :goto_0
.end method

.method protected getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    .locals 1
    .parameter "nPos"

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v0, :cond_0

    .line 2683
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v0

    .line 2686
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getContainerView(I)Lcom/htc/sunny2/view/SView;
    .locals 1
    .parameter "nUIPos"

    .prologue
    .line 636
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplacementToContainer(IF)F
    .locals 3
    .parameter "ContainerId"
    .parameter "n3DX"

    .prologue
    .line 2541
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2544
    :goto_0
    return v1

    .line 2543
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    .line 2544
    .local v0, pos3DV:Lcom/htc/sunny2/view/Vector3F;
    iget v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v1, p2, v1

    goto :goto_0
.end method

.method protected getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F
    .locals 11
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"
    .parameter "interpolate"

    .prologue
    .line 2102
    const/4 v3, 0x0

    .line 2103
    .local v3, nRes:F
    const/4 v6, 0x0

    .local v6, ts:F
    const/4 v5, 0x0

    .line 2104
    .local v5, tc:F
    move v4, p1

    .line 2105
    .local v4, t:F
    move v0, p2

    .line 2106
    .local v0, b:F
    move v1, p3

    .line 2107
    .local v1, c:F
    move v2, p4

    .line 2109
    .local v2, d:F
    sget-object v7, Lcom/htc/sunny2/widget/presentation/SPresentation$16;->$SwitchMap$com$htc$sunny2$widget$presentation$SPresentation$INTERPOLATE:[I

    invoke-virtual/range {p5 .. p5}, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 2124
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Not support interpolate typle !!!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2111
    :pswitch_0
    div-float v7, v1, v2

    mul-float/2addr v7, v4

    add-float v3, v7, v0

    .line 2126
    :goto_0
    return v3

    .line 2114
    :pswitch_1
    div-float/2addr v4, v2

    .line 2115
    mul-float v6, v4, v4

    .line 2116
    mul-float v5, v6, v4

    .line 2117
    const/high16 v7, 0x3f80

    mul-float/2addr v7, v5

    mul-float/2addr v7, v6

    const/high16 v8, -0x3f60

    mul-float/2addr v8, v6

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x4120

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    const/high16 v8, -0x3ee0

    mul-float/2addr v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40a0

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 2118
    goto :goto_0

    .line 2121
    :pswitch_2
    div-float v7, v4, v2

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-float v7, v7

    mul-float/2addr v7, v1

    add-float v3, v7, v0

    .line 2122
    goto :goto_0

    .line 2109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getPressPosition(IF)F
    .locals 3
    .parameter "pressedContainerId"
    .parameter "dispalcement"

    .prologue
    .line 2548
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2551
    :goto_0
    return v1

    .line 2550
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    .line 2551
    .local v0, pos3DV:Lcom/htc/sunny2/view/Vector3F;
    iget v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v1, p2

    goto :goto_0
.end method

.method protected getRefineDuration(II)I
    .locals 4
    .parameter "nDuration"
    .parameter "nTotalTimeSlot"

    .prologue
    const/4 v1, 0x2

    .line 1944
    if-gtz p1, :cond_1

    move p1, v1

    .line 1959
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1948
    .restart local p1
    :cond_1
    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/2addr v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1949
    .local v0, nThreshold:I
    if-gtz v0, :cond_2

    move p1, v1

    .line 1950
    goto :goto_0

    .line 1953
    :cond_2
    if-ge p2, p1, :cond_3

    move p1, v1

    .line 1954
    goto :goto_0

    .line 1955
    :cond_3
    mul-int/lit8 v1, p1, 0x2

    if-ge p2, v1, :cond_0

    .line 1956
    const/4 p1, 0x3

    goto :goto_0
.end method

.method public getSelection()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1016
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v0

    .line 1018
    :cond_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_2

    .line 1019
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-gez v1, :cond_0

    .line 1021
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1024
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    return v0
.end method

.method protected getTimeSlotOffsetX(IF)I
    .locals 6
    .parameter "nBaseUIPos"
    .parameter "nOffsetX"

    .prologue
    const/4 v3, 0x0

    .line 2479
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-nez v4, :cond_1

    move v0, v3

    .line 2537
    :cond_0
    :goto_0
    return v0

    .line 2481
    :cond_1
    if-ltz p1, :cond_2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-lt p1, v4, :cond_3

    :cond_2
    move v0, v3

    .line 2482
    goto :goto_0

    .line 2486
    :cond_3
    const/4 v0, 0x0

    .line 2487
    .local v0, nTimeSlotOffset:I
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v4, :cond_8

    .line 2489
    if-ltz p1, :cond_4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_5

    :cond_4
    move v0, v3

    .line 2490
    goto :goto_0

    .line 2491
    :cond_5
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_6

    .line 2492
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 2493
    .local v2, nXInterval:F
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 2514
    .end local v2           #nXInterval:F
    :goto_1
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2515
    .local v1, nVisibleItems:I
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-lez v3, :cond_e

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_e

    .line 2516
    if-lez v0, :cond_d

    .line 2517
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-gt v3, v4, :cond_0

    .line 2518
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 2494
    .end local v1           #nVisibleItems:I
    :cond_6
    if-nez p1, :cond_7

    .line 2495
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    iget-object v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float v2, v3, v4

    .line 2496
    .restart local v2       #nXInterval:F
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    div-float/2addr v3, v2

    float-to-int v0, v3

    .line 2497
    goto :goto_1

    .line 2498
    .end local v2           #nXInterval:F
    :cond_7
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_1

    .line 2502
    :cond_8
    if-ltz p1, :cond_9

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_a

    :cond_9
    move v0, v3

    .line 2503
    goto/16 :goto_0

    .line 2504
    :cond_a
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_b

    .line 2505
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 2506
    :cond_b
    if-nez p1, :cond_c

    .line 2507
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 2509
    :cond_c
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v4

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v4, v4, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v5, v5, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    float-to-int v0, v3

    goto/16 :goto_1

    .line 2520
    .restart local v1       #nVisibleItems:I
    :cond_d
    if-gez v0, :cond_0

    .line 2521
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-lt v3, v4, :cond_0

    .line 2522
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 2526
    :cond_e
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_f

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    if-nez v3, :cond_f

    if-gez v0, :cond_f

    .line 2527
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x2

    if-lt v3, v4, :cond_0

    .line 2528
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    neg-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    .line 2531
    :cond_f
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    if-lez v0, :cond_0

    .line 2532
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 2533
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto/16 :goto_0
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 2582
    const/4 v0, 0x1

    .line 2584
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected homing()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1183
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-gtz v1, :cond_0

    .line 1184
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1185
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1189
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1191
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v1, :cond_10

    .line 1192
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1193
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v1, :cond_4

    .line 1194
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1283
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1284
    .local v0, nDuration:I
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_18

    .line 1285
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_BOUNCING:I

    .line 1290
    :goto_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v0

    .line 1292
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v1, :cond_2

    .line 1293
    const/4 v0, 0x0

    .line 1296
    :cond_2
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_19

    .line 1297
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1298
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1305
    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v1, :cond_3

    if-gtz v0, :cond_1a

    .line 1306
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    .line 1317
    :goto_3
    return-void

    .line 1195
    .end local v0           #nDuration:I
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v8, v1, :cond_8

    .line 1197
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_6

    .line 1198
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_5

    .line 1199
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1201
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1204
    :cond_6
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1205
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_7

    .line 1206
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1208
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_0

    .line 1211
    :cond_8
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v6, v1, :cond_c

    .line 1212
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_a

    .line 1213
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_9

    .line 1214
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1216
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1219
    :cond_a
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, v2, :cond_1

    .line 1220
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_b

    .line 1221
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1223
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1228
    :cond_c
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_e

    .line 1229
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_d

    .line 1230
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1234
    :goto_4
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1232
    :cond_d
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_4

    .line 1236
    :cond_e
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_f

    .line 1237
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1241
    :goto_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1239
    :cond_f
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_5

    .line 1246
    :cond_10
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1247
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-nez v1, :cond_12

    .line 1248
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_11

    .line 1249
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1250
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1252
    :cond_11
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    neg-int v2, v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1253
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1255
    :cond_12
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_14

    .line 1256
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_13

    .line 1257
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1261
    :goto_6
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1262
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1259
    :cond_13
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_6

    .line 1264
    :cond_14
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ne v1, v2, :cond_15

    .line 1265
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1266
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1267
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1269
    :cond_15
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ge v1, v2, :cond_17

    .line 1270
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_16

    .line 1271
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1275
    :goto_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-eqz v1, :cond_1

    .line 1276
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto/16 :goto_0

    .line 1273
    :cond_16
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_7

    .line 1279
    :cond_17
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto/16 :goto_0

    .line 1287
    .restart local v0       #nDuration:I
    :cond_18
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_HOMING:I

    goto/16 :goto_1

    .line 1301
    :cond_19
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1302
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    goto/16 :goto_2

    .line 1310
    :cond_1a
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1311
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1313
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-ne v6, v1, :cond_1b

    .line 1314
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1316
    :cond_1b
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_3
.end method

.method protected initContainers()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers(Z)V

    .line 429
    return-void
.end method

.method protected initContainers(Z)V
    .locals 14
    .parameter "bForceUpdated"

    .prologue
    const/4 v10, 0x0

    const/high16 v13, 0x3f80

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 432
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v9, "initContainers +"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-nez v6, :cond_1

    .line 434
    :cond_0
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 435
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    .line 436
    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    .line 437
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setContainerCount(I)V

    .line 438
    iput-object v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .line 439
    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 440
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers 0-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemCount()I

    move-result v2

    .line 445
    .local v2, nDataCount:I
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v6, :cond_2

    .line 446
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    invoke-interface {v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;->getContainerCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setContainerCount(I)V

    .line 448
    :cond_2
    if-lez v2, :cond_3

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-gtz v6, :cond_4

    .line 449
    :cond_3
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    .line 451
    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    .line 452
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->setContainerCount(I)V

    .line 453
    iput-object v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .line 454
    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 455
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers 1-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    :cond_4
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsContainerCountChanged:Z

    if-eq v8, v6, :cond_5

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ne v2, v6, :cond_5

    if-ne v8, p1, :cond_d

    .line 460
    :cond_5
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 461
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->destroyAllResource()V

    .line 462
    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    .line 464
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-eq v2, v6, :cond_7

    .line 465
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    .line 466
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v6, v9, :cond_6

    .line 467
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 469
    :cond_6
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v6, :cond_7

    .line 470
    iput v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 474
    :cond_7
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mVisibleContainerCount:I

    .line 475
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    new-array v6, v6, [Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iput-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .line 476
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    .line 479
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v1, v6, :cond_d

    .line 480
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget-object v9, p0, Lcom/htc/sunny2/view/SView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/sunny2/view/SView;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    invoke-direct {v0, p0, v9, v10}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;)V

    aput-object v0, v6, v1

    .line 482
    .local v0, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    .line 483
    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 485
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;)V

    .line 486
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 488
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v5, v6, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 489
    .local v5, nWidth:I
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v4, v6, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 491
    .local v4, nHeight:I
    invoke-static {v8}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    .line 492
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 493
    invoke-static {v8}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    .line 494
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 495
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite;->getLayer(I)Lcom/htc/sunny2/Sprite$Layer;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/Sprite$Layer;->setRenderable(Z)V

    .line 496
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v6, v8}, Lcom/htc/sunny2/Sprite;->setTouchable(Z)V

    .line 497
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, v5

    iget v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioW:F

    add-float/2addr v10, v13

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    int-to-float v10, v4

    iget v11, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnlargeSensorRatioH:F

    add-float/2addr v11, v13

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v10, v10

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 498
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, v5

    int-to-float v10, v4

    neg-int v11, v4

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 500
    invoke-static {}, Lcom/htc/sunny2/Texture;->createTexture()Lcom/htc/sunny2/Texture;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    .line 501
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    iget-object v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 503
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    if-ne v8, v6, :cond_9

    .line 504
    invoke-static {v8}, Lcom/htc/sunny2/Sprite;->obtain(I)Lcom/htc/sunny2/Sprite;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    .line 505
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->addSprite(Lcom/htc/sunny2/Sprite;)V

    .line 506
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    if-nez v6, :cond_8

    .line 507
    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 509
    :cond_8
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v9, v5

    iget v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v6, v9, v10, v12, v11}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    .line 510
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    sub-int v9, v4, v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float/2addr v9, v10

    invoke-virtual {v6, v12, v9, v13, v13}, Lcom/htc/sunny2/Sprite;->setTextureCoordinatesBy2P(FFFF)V

    .line 511
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v9, 0x4334

    invoke-virtual {v6, v9, v12, v12}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    .line 513
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 514
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 515
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    iget v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v6, v12, v9, v12}, Lcom/htc/sunny2/Sprite;->setPosition(FFF)V

    .line 516
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    iget-object v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 519
    :cond_9
    iget-object v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getSpriteTag(I)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/Sprite;->setUserFlag(I)V

    .line 521
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v1, v6

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int v3, v6, v9

    .line 522
    .local v3, nDataIndex:I
    if-ltz v3, :cond_b

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v6, :cond_b

    .line 523
    iput v3, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 524
    iput-boolean v7, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 530
    :goto_2
    iget-object v9, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v6, :cond_a

    iget-boolean v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v6, :cond_c

    :cond_a
    move v6, v8

    :goto_3
    invoke-virtual {p0, v0, v9, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    .line 479
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 526
    :cond_b
    const/4 v6, -0x1

    iput v6, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 527
    iput-boolean v8, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_2

    :cond_c
    move v6, v7

    .line 530
    goto :goto_3

    .line 534
    .end local v0           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #i:I
    .end local v3           #nDataIndex:I
    .end local v4           #nHeight:I
    .end local v5           #nWidth:I
    :cond_d
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-nez v6, :cond_e

    .line 535
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    .line 538
    :cond_e
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 539
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    .line 541
    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledOpeningAnimation:Z

    if-ne v8, v6, :cond_f

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v8, v6, :cond_f

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    if-nez v6, :cond_f

    .line 544
    iput-boolean v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    .line 545
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->openingAnimation()V

    .line 550
    :goto_4
    sget-object v6, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v7, "initContainers -"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 547
    :cond_f
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 548
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    goto :goto_4
.end method

.method protected initDefaultLayout()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 386
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-nez v8, :cond_0

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-nez v8, :cond_2

    .line 387
    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 419
    :cond_1
    return-void

    .line 391
    :cond_2
    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    new-array v8, v8, [Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iput-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    .line 393
    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth_H:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int v1, v8, v9

    .line 394
    .local v1, listWidth_H:I
    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v2, v8, 0x2

    .line 395
    .local v2, nCenterPos:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v2

    .line 396
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 397
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v2

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 400
    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v4, v8, 0x2

    .line 401
    .local v4, nOneSizeItemCount:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_1

    .line 403
    sub-int v3, v2, v0

    .line 404
    .local v3, nLeftPos:I
    int-to-float v8, v0

    int-to-float v9, v1

    int-to-float v10, v4

    invoke-virtual {p0, v8, v11, v9, v10}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLayout(FFFF)F

    move-result v7

    .line 405
    .local v7, x:F
    const/high16 v8, 0x3f80

    const v9, 0x3dcccccd

    int-to-float v10, v0

    mul-float/2addr v9, v10

    sub-float v6, v8, v9

    .line 406
    .local v6, scale:F
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v3

    .line 407
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    neg-float v9, v7

    invoke-virtual {v8, v9, v11, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 408
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v8, v6, v6, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 409
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 410
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v3

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 412
    add-int v5, v2, v0

    .line 413
    .local v5, nRightPos:I
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    new-instance v9, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    invoke-direct {v9}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;-><init>()V

    aput-object v9, v8, v5

    .line 414
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v8, v7, v11, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 415
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v8, v6, v6, v11}, Lcom/htc/sunny2/view/Vector3F;->setVector3F(FFF)V

    .line 416
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemWidth:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 417
    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDefaultLayout:[Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemHeight:I

    iput v9, v8, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected interpolateLayout(FFFF)F
    .locals 2
    .parameter "current"
    .parameter "start"
    .parameter "total"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 422
    cmpl-float v1, v0, p4

    if-nez v1, :cond_0

    .line 423
    :goto_0
    return v0

    :cond_0
    div-float v0, p3, p4

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    goto :goto_0
.end method

.method protected isEnabledAnimation()Z
    .locals 2

    .prologue
    .line 2353
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2355
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledAnimation:Z

    goto :goto_0
.end method

.method public isEnabledScroll()Z
    .locals 1

    .prologue
    .line 2371
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableScroll:Z

    return v0
.end method

.method public isEnabledTouchEvent()Z
    .locals 1

    .prologue
    .line 2359
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableTouchEvent:Z

    return v0
.end method

.method protected moveContainers(I)V
    .locals 13
    .parameter "nTimeSlot"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1875
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    const/4 v10, -0x1

    .line 1878
    .local v10, nSkipCID:I
    if-lez p1, :cond_3

    .line 1879
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v8

    .line 1880
    .local v8, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 1881
    iget v10, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    .line 1892
    .end local v8           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .local v3, nCurPos:I
    const/4 v4, 0x0

    .line 1893
    .local v4, nNextPos:I
    const/4 v7, 0x0

    .local v7, cid:I
    :goto_2
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v7, v0, :cond_c

    .line 1894
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v8, v0, v7

    .line 1895
    .restart local v8       #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v8, :cond_5

    .line 1893
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1883
    .end local v3           #nCurPos:I
    .end local v4           #nNextPos:I
    .end local v7           #cid:I
    .end local v8           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_3
    if-gez p1, :cond_4

    .line 1884
    invoke-virtual {p0, v11}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v8

    .line 1885
    .restart local v8       #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-eqz v8, :cond_2

    .line 1886
    iget v10, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    goto :goto_1

    .line 1889
    .end local v8           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    .line 1897
    .restart local v3       #nCurPos:I
    .restart local v4       #nNextPos:I
    .restart local v7       #cid:I
    .restart local v8       #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_5
    iget v3, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 1898
    move v4, v3

    .line 1899
    if-gez p1, :cond_8

    .line 1900
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v3

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    .line 1905
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    if-eqz v0, :cond_9

    .line 1906
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v7

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    move v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;->updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    .line 1912
    :goto_5
    if-ne v10, v7, :cond_a

    .line 1913
    iput-boolean v12, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    .line 1918
    :goto_6
    iget-object v1, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v0, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_7

    iget-boolean v0, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_b

    :cond_7
    move v0, v12

    :goto_7
    invoke-virtual {p0, v8, v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_3

    .line 1901
    :cond_8
    if-lez p1, :cond_6

    .line 1902
    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int v4, v0, v1

    goto :goto_4

    .line 1909
    :cond_9
    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v0, v0, v7

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_5

    .line 1915
    :cond_a
    iput-boolean v11, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    goto :goto_6

    :cond_b
    move v0, v11

    .line 1918
    goto :goto_7

    .line 1921
    .end local v8           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_c
    if-nez p1, :cond_0

    .line 1923
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v9

    .line 1924
    .local v9, focusContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-eqz v9, :cond_0

    .line 1925
    iget-object v0, v9, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v9, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFocusPosV:Lcom/htc/sunny2/view/Vector3F;

    goto/16 :goto_0
.end method

.method protected moveToTimeSlot(I)V
    .locals 5
    .parameter "nTimeSlot"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1086
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1088
    .local v0, newDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt v1, v2, :cond_6

    .line 1089
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    if-lt p1, v1, :cond_2

    .line 1090
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1095
    :goto_0
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v1, :cond_3

    if-gez p1, :cond_3

    .line 1096
    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    .line 1109
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v4, v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    if-ne v4, v1, :cond_1

    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v1, v2, :cond_1

    .line 1110
    const/4 p1, 0x0

    .line 1111
    iput-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    .line 1114
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 1115
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    .line 1124
    :goto_2
    return-void

    .line 1092
    :cond_2
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_0

    .line 1097
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v1, :cond_4

    if-lez p1, :cond_4

    .line 1098
    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    goto :goto_1

    .line 1099
    :cond_4
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-ltz v1, :cond_5

    if-ltz p1, :cond_5

    .line 1100
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyPositionChange(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    .line 1102
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    sub-int/2addr p1, v1

    goto :goto_1

    .line 1103
    :cond_5
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gtz v1, :cond_0

    if-gtz p1, :cond_0

    .line 1104
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyPositionChange(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    .line 1106
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 1119
    :cond_6
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    .line 1120
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    .line 1121
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveContainers(I)V

    .line 1123
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 858
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$4;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$4;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 865
    return-void
.end method

.method public notifyDataSetChanged(I)V
    .locals 1
    .parameter "nSelection"

    .prologue
    .line 875
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$5;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method protected notifyDataSetChangedW()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 870
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers()V

    .line 871
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    goto :goto_0
.end method

.method protected notifyDataSetChangedW(I)V
    .locals 1
    .parameter "nSelection"

    .prologue
    .line 885
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-nez v0, :cond_0

    .line 890
    :goto_0
    return-void

    .line 887
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 888
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers(Z)V

    .line 889
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    goto :goto_0
.end method

.method protected notifyPositionChange(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V
    .locals 3
    .parameter "eDirection"

    .prologue
    .line 1047
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1050
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getLastUpdateIndex()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1051
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getTargetFocusIndex()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 1070
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    .line 1072
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 1073
    .local v0, nSelectionPos:I
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gez v1, :cond_5

    .line 1074
    const/4 v0, 0x0

    .line 1081
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateNewContainer(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    .line 1083
    .end local v0           #nSelectionPos:I
    :goto_2
    return-void

    .line 1053
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayoutPos(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    .line 1055
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v1, v2, :cond_2

    .line 1056
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifySelectionChange(I)V

    .line 1058
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateNewContainer(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V

    goto :goto_2

    .line 1063
    :cond_3
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_4

    .line 1064
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1065
    :cond_4
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v1, p1, :cond_0

    .line 1066
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    goto :goto_0

    .line 1075
    .restart local v0       #nSelectionPos:I
    :cond_5
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v1, v2, :cond_6

    .line 1076
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 1078
    :cond_6
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifySelectionChange(I)V

    goto :goto_1
.end method

.method protected notifySelectionChange(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1028
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 1029
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;->onSelectionChange(I)V

    .line 1032
    :cond_0
    return-void
.end method

.method protected notifyStateChange(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 1036
    const/16 v0, 0x12

    if-ne v0, p1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSunnyEnvironment:Lcom/htc/sunny2/SunnyEnvironment;

    invoke-virtual {v0}, Lcom/htc/sunny2/SunnyEnvironment;->getHandler()I

    move-result v0

    invoke-static {v0}, Lcom/htc/sunny2/Sunny2;->Environment_LogStatus(I)V

    .line 1039
    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    .line 1040
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;->onStateChange(I)V

    .line 1043
    :cond_1
    return-void
.end method

.method public notifyUpdateItem(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 898
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$6;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$6;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 905
    return-void
.end method

.method protected notifyUpdateItemW(I)V
    .locals 7
    .parameter "nPos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 908
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-nez v4, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    .line 912
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-eqz v1, :cond_0

    .line 913
    iget v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v4, :cond_5

    iget v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v4, v5, :cond_5

    .line 915
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v4, p1}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    .line 916
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    if-eqz v0, :cond_4

    .line 917
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v0, v2}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V

    .line 921
    :goto_1
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 922
    iput-boolean v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 928
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    :goto_2
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v5, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_0

    .line 919
    .restart local v0       #bmp:Lcom/htc/sunny2/SBitmap;
    :cond_4
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 924
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    :cond_5
    iput-boolean v3, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 925
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2
.end method

.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->reset()V

    .line 2049
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2069
    :goto_0
    :pswitch_0
    return-void

    .line 2055
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onHomingAnimationEnd()V

    goto :goto_0

    .line 2058
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onFlingAnimationEnd()V

    goto :goto_0

    .line 2061
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimationEnd()V

    goto :goto_0

    .line 2064
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onRotateSelfEnd()V

    goto :goto_0

    .line 2049
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 2291
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2304
    :cond_0
    :goto_0
    return v2

    .line 2297
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_2

    .line 2298
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 2301
    :cond_2
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2302
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2309
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onFling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    float-to-int v0, p3

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->flingW(I)V

    .line 2313
    const/4 v0, 0x0

    return v0
.end method

.method protected onFlingAnimationEnd()V
    .locals 1

    .prologue
    .line 2074
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    .line 2076
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2077
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 2084
    :goto_0
    return-void

    .line 2079
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2080
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2081
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onHomingAnimationEnd()V
    .locals 0

    .prologue
    .line 1989
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 1990
    return-void
.end method

.method protected onLayout(ZFFFII)V
    .locals 2
    .parameter "changed"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2132
    invoke-super/range {p0 .. p6}, Lcom/htc/sunny2/widget/presentation/SAdapterView;->onLayout(ZFFFII)V

    .line 2133
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLayout +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iput p5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    .line 2136
    iput p6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    .line 2138
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth_H:I

    .line 2139
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight_H:I

    .line 2140
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateViewLayout()V

    .line 2141
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onLayout -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 2319
    return-void
.end method

.method protected onRotateSelf()V
    .locals 10

    .prologue
    .line 1676
    const/4 v2, 0x0

    .line 1677
    .local v2, nRStartY:F
    const/high16 v9, -0x3c4c

    .line 1679
    .local v9, nREndY:F
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    if-nez v0, :cond_0

    .line 1680
    const/high16 v9, 0x43b4

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v7, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    .line 1684
    .local v7, nContainerId:I
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v0, :cond_1

    if-ltz v7, :cond_1

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v0, v0, -0x1

    if-le v7, v0, :cond_2

    .line 1713
    :cond_1
    :goto_0
    return-void

    .line 1688
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v6, v0, v7

    .line 1689
    .local v6, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-eqz v6, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_3

    .line 1692
    iget-object v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iput v2, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 1693
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto :goto_0

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 1699
    const/4 v8, 0x0

    .line 1701
    .local v8, nNextRY:F
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-gt v0, v1, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_6

    .line 1704
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    sub-float v3, v9, v2

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v8

    .line 1708
    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iput v8, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 1711
    iget-object v1, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v0, :cond_5

    iget-boolean v0, v6, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0, v6, v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_0

    .line 1705
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_4

    .line 1706
    move v8, v9

    goto :goto_1

    .line 1711
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onRotateSelfEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1717
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 1718
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1719
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1720
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2376
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    if-ne v9, v0, :cond_1

    .line 2377
    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] onScroll() enable animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block scroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 2392
    :goto_0
    return v0

    .line 2381
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v9, v0, :cond_2

    .line 2382
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onScroll() has animation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 2386
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 2387
    .local v7, nStart2DX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 2389
    .local v8, nStart2DY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    float-to-int v3, v7

    float-to-int v4, v8

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollPresentation(IIIIFF)Z

    .line 2391
    iput-boolean v10, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    move v0, v9

    .line 2392
    goto :goto_0
.end method

.method protected onScrollAnimation()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1994
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-lt v0, v1, :cond_0

    .line 1995
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    .line 2044
    :goto_0
    return-void

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 2000
    const/4 v9, 0x0

    .line 2001
    .local v9, nTimeSlotOffset:I
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-ge v0, v1, :cond_8

    .line 2002
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v7, v0

    .line 2003
    .local v7, nCurTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v5, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getInterpolateResult(FFFFLcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;)F

    move-result v0

    float-to-int v8, v0

    .line 2005
    .local v8, nPreTimeSlot:I
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 2006
    sub-int v0, v7, v8

    neg-int v9, v0

    .line 2015
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v6, v8, v0

    .line 2017
    .local v6, nAccuracy:I
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 2018
    sub-int/2addr v9, v6

    .line 2023
    :cond_1
    :goto_2
    if-nez v9, :cond_6

    .line 2024
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_5

    .line 2025
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimation()V

    goto :goto_0

    .line 2007
    .end local v6           #nAccuracy:I
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_3

    .line 2008
    sub-int v9, v7, v8

    goto :goto_1

    .line 2010
    :cond_3
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    .line 2011
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onScrollAnimation() wrong direction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2019
    .restart local v6       #nAccuracy:I
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_1

    .line 2020
    add-int/2addr v9, v6

    goto :goto_2

    .line 2027
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_6

    .line 2028
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onScrollAnimation()V

    goto/16 :goto_0

    .line 2032
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 2043
    .end local v6           #nAccuracy:I
    .end local v7           #nCurTimeSlot:I
    .end local v8           #nPreTimeSlot:I
    :cond_7
    :goto_3
    invoke-virtual {p0, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollByOffset(I)V

    goto/16 :goto_0

    .line 2034
    :cond_8
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-ne v0, v1, :cond_7

    .line 2035
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int v9, v0, v1

    .line 2036
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_9

    .line 2037
    mul-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 2038
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_7

    goto :goto_3
.end method

.method protected onScrollAnimationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2087
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateBouncingState()V

    .line 2089
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 2090
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 2092
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_0

    .line 2093
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 2099
    :goto_0
    return-void

    .line 2095
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2096
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2097
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected onScrollPresentation(IIIIFF)Z
    .locals 10
    .parameter "n2DX1"
    .parameter "n2DY1"
    .parameter "n2DX2"
    .parameter "n2DY2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 2398
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->Get3DX(I)I

    move-result v1

    .line 2406
    .local v1, n3DX2:I
    const/4 v7, -0x1

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v7, v8, :cond_6

    .line 2407
    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mTouchSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;

    move-result-object v7

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    add-float v5, v7, v8

    .line 2408
    .local v5, nPrevious3DX:F
    int-to-float v2, v1

    .line 2410
    .local v2, nNext3DX:F
    sub-float v3, v2, v5

    .line 2411
    .local v3, nOffsetX:F
    const/4 v7, 0x0

    cmpl-float v7, v7, v3

    if-nez v7, :cond_0

    .line 2412
    const/4 v7, 0x1

    .line 2449
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    :goto_0
    return v7

    .line 2415
    .restart local v2       #nNext3DX:F
    .restart local v3       #nOffsetX:F
    .restart local v5       #nPrevious3DX:F
    :cond_0
    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v7, v7, v8

    iget v7, v7, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {p0, v7, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getTimeSlotOffsetX(IF)I

    move-result v6

    .line 2417
    .local v6, nTimeSlotOffset:I
    const/4 v0, 0x0

    .line 2418
    .local v0, bLimitScroll:Z
    const/high16 v7, 0x3f80

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1

    .line 2419
    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v7, :cond_3

    if-lez v6, :cond_3

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v7, :cond_3

    .line 2420
    const/4 v0, 0x1

    .line 2425
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 2426
    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 2427
    .local v4, nOneItemLimitTimeSlot:I
    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v7, v4, :cond_2

    .line 2428
    if-lez v6, :cond_4

    .line 2429
    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int v6, v4, v7

    .line 2436
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_2
    :goto_2
    if-nez v6, :cond_5

    .line 2437
    const/4 v7, 0x1

    goto :goto_0

    .line 2421
    :cond_3
    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_1

    if-gez v6, :cond_1

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v7, :cond_1

    .line 2422
    const/4 v0, 0x1

    goto :goto_1

    .line 2431
    .restart local v4       #nOneItemLimitTimeSlot:I
    :cond_4
    neg-int v7, v4

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int v6, v7, v8

    goto :goto_2

    .line 2440
    .end local v4           #nOneItemLimitTimeSlot:I
    :cond_5
    iget-object v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v7}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->reset()V

    .line 2442
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2444
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollByOffset(I)V

    .line 2446
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    .line 2449
    .end local v0           #bLimitScroll:Z
    .end local v2           #nNext3DX:F
    .end local v3           #nOffsetX:F
    .end local v5           #nPrevious3DX:F
    .end local v6           #nTimeSlotOffset:I
    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 2454
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[SPresentation] onShowPress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2463
    :goto_0
    return-void

    .line 2459
    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->press(I)V

    .line 2462
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 2467
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2472
    :goto_0
    return v1

    .line 2471
    :cond_0
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 4
    .parameter "event"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 2183
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2184
    :cond_0
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SPresentation] fake: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " touch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    :cond_1
    :goto_0
    return v3

    .line 2188
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerId(I)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v0, v1, :cond_3

    .line 2189
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    .line 2190
    invoke-virtual {p0, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerId(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    .line 2191
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 2192
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->Get3DX(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getDisplacementToContainer(IF)F

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDisplacement:F

    .line 2194
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-ne v2, v0, :cond_3

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_3

    .line 2195
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    .line 2200
    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    if-eqz v0, :cond_1

    .line 2204
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 2207
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onUpW(Landroid/view/MotionEvent;I)V

    .line 2208
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsPressed:Z

    .line 2209
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mBlockScroll:Z

    .line 2210
    iput-boolean v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledBlockScroll:Z

    goto :goto_0
.end method

.method public onUpW(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "e"
    .parameter "nHitSpriteId"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 2251
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerHitFeedback:Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->reset()V

    .line 2253
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v2, v0, :cond_4

    .line 2259
    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    if-ne v2, v0, :cond_7

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-nez v0, :cond_7

    .line 2260
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    if-eq v3, v0, :cond_2

    .line 2261
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ne v0, v1, :cond_5

    .line 2262
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    if-eqz v0, :cond_1

    .line 2263
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;->onContainerClick(Lcom/htc/sunny2/view/SView;I)V

    .line 2265
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    .line 2284
    :cond_2
    :goto_0
    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    .line 2285
    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressStartSelectedPos:I

    .line 2286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsSingleTapUp:Z

    .line 2287
    :cond_3
    :goto_1
    return-void

    .line 2255
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2267
    :cond_5
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v0, :cond_6

    .line 2268
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPressContainerId:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 2270
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    .line 2274
    :cond_7
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-ne v0, v1, :cond_8

    .line 2275
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2276
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0

    .line 2277
    :cond_8
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-eq v0, v1, :cond_2

    .line 2279
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPresentationState:I

    if-nez v0, :cond_2

    .line 2280
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2281
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->homing()V

    goto :goto_0
.end method

.method protected openingAnimation()V
    .locals 10

    .prologue
    const v8, 0x3e4ccccd

    const/4 v9, 0x0

    .line 555
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v6, 0x2

    .line 556
    .local v4, nCenterPos:I
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v2

    .line 557
    .local v2, focusLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    new-instance v5, Lcom/htc/sunny2/view/Vector3F;

    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    add-float/2addr v6, v8

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/htc/sunny2/view/Vector3F;-><init>(FFF)V

    .line 560
    .local v5, startScale:Lcom/htc/sunny2/view/Vector3F;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v3, v6, :cond_2

    .line 561
    iget-object v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v6, v3

    .line 562
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_0

    .line 560
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 564
    :cond_0
    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v8, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 565
    invoke-virtual {v1, v9}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setAlpha(I)V

    .line 566
    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v8, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    .line 567
    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v6, v6, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v7, v7, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v8, v8, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v6, v7, v8}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRotate(FFF)V

    .line 569
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 570
    .local v0, animationController:Lcom/htc/sunny2/view/animation/SAnimationController;
    if-ne v4, v3, :cond_1

    .line 571
    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 572
    const/16 v6, 0xff

    invoke-virtual {v0, v9, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 573
    new-instance v6, Lcom/htc/sunny2/widget/presentation/SPresentation$1;

    invoke-direct {v6, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$1;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 591
    :goto_2
    const-wide/16 v6, 0x190

    invoke-virtual {v0, v6, v7}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 592
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setFillAfter(Z)V

    .line 593
    sget-object v6, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 594
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->cancelAnimation()V

    .line 595
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    goto :goto_1

    .line 587
    :cond_1
    iget-object v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v5, v6}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 588
    invoke-virtual {v0, v9, v9}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    goto :goto_2

    .line 597
    .end local v0           #animationController:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_2
    return-void
.end method

.method protected openingAnimation2()V
    .locals 6

    .prologue
    .line 601
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v2

    .line 603
    .local v2, focusLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v3, v4, :cond_1

    .line 604
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v4, v3

    .line 605
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    new-instance v0, Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-direct {v0}, Lcom/htc/sunny2/view/animation/SAnimationController;-><init>()V

    .line 606
    .local v0, animationController:Lcom/htc/sunny2/view/animation/SAnimationController;
    iget-object v4, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setPositionAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 607
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAlphaAnimation(II)V

    .line 608
    iget-object v4, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setRotationAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 609
    iget-object v4, v2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget-object v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setScaleAnimation(Lcom/htc/sunny2/view/Vector3F;Lcom/htc/sunny2/view/Vector3F;)V

    .line 610
    sget-object v4, Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;->EASEINOUT_CUBIC:Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setInterpolator(Lcom/htc/sunny2/view/animation/SAnimationController$INTERPOLATOR;)V

    .line 611
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Lcom/htc/sunny2/view/animation/SAnimationController;->setDuration(J)V

    .line 612
    if-nez v3, :cond_0

    .line 613
    new-instance v4, Lcom/htc/sunny2/widget/presentation/SPresentation$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$2;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->setAnimationListener(Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 626
    :cond_0
    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->cancelAnimation()V

    .line 627
    invoke-virtual {v1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->startAnimation(Lcom/htc/sunny2/view/animation/SAnimationController;)V

    .line 603
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    .end local v0           #animationController:Lcom/htc/sunny2/view/animation/SAnimationController;
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_1
    return-void
.end method

.method public rotateSelf(IZ)V
    .locals 1
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    .line 1639
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation$12;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1646
    return-void
.end method

.method protected rotateSelfW(IZ)V
    .locals 4
    .parameter "nPosition"
    .parameter "bClockwise"

    .prologue
    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 1650
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1651
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1673
    :goto_0
    return-void

    .line 1655
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v0

    .line 1656
    .local v0, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v0, :cond_1

    .line 1657
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1661
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1663
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mID:I

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nArgs:I

    .line 1664
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_ROTATE_SELF:I

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1665
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v2, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1666
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v2, 0x5

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1667
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1669
    iput-boolean p2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRotateClockwise:Z

    .line 1670
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1671
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1672
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method protected runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 777
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-ne v0, v1, :cond_0

    .line 778
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 785
    :goto_0
    return-void

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SView;->mSViewHandler:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/RenderThreadHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 783
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "runOnRenderThread() mSViewHandler == null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected scrollByOffset(I)V
    .locals 1
    .parameter "nTimeSlotOffset"

    .prologue
    .line 1174
    if-lez p1, :cond_1

    .line 1175
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1179
    :cond_0
    :goto_0
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 1180
    return-void

    .line 1176
    :cond_1
    if-gez p1, :cond_0

    .line 1177
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 1
    .parameter "nPos"

    .prologue
    .line 1423
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$10;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1430
    return-void
.end method

.method public scrollToLeft()V
    .locals 1

    .prologue
    .line 1323
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$8;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$8;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1330
    return-void
.end method

.method protected scrollToLeftW()V
    .locals 3

    .prologue
    const/16 v2, 0x12

    .line 1333
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1334
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1366
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1339
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1343
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1345
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1346
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1347
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1359
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1360
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1361
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1363
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1365
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 1349
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1351
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    goto :goto_0

    .line 1353
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1355
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_NEXT:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method public scrollToRight()V
    .locals 1

    .prologue
    .line 1372
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$9;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$9;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1379
    return-void
.end method

.method protected scrollToRightW()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x12

    .line 1382
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_0

    .line 1383
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1417
    :goto_0
    return-void

    .line 1387
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1388
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1394
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    if-ne v0, v1, :cond_3

    .line 1395
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1396
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1397
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nInFrame:I

    .line 1398
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v3, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    .line 1410
    :cond_2
    :goto_1
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1411
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1412
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v1, 0x2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1414
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1416
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0

    .line 1400
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_4

    .line 1402
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1404
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v0, v1, :cond_2

    .line 1405
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nElapseTimeSlot:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1406
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_PREVIOUS:I

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_1
.end method

.method protected scrollToW(I)V
    .locals 9
    .parameter "nPos"

    .prologue
    const/16 v4, 0x12

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1434
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    sub-int v0, p1, v3

    .line 1436
    .local v0, nOffset:I
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge p1, v3, :cond_0

    if-ltz p1, :cond_0

    if-nez v0, :cond_1

    .line 1439
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1509
    :goto_0
    return-void

    .line 1443
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1444
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 1448
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->init(IIII)V

    .line 1450
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1451
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getFirstUpdateIndex()I

    move-result v3

    iput v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 1452
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->getPosOffset()I

    move-result v0

    .line 1455
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1456
    .local v1, nPosOffset:I
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int v2, v1, v3

    .line 1458
    .local v2, nTimeSlotOffset:I
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 1460
    if-gez v0, :cond_9

    .line 1461
    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1462
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_7

    .line 1463
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v1, -0x1

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    .line 1481
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->DURATION_SCROLL_TO:I

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1483
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gtz v3, :cond_c

    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_c

    .line 1484
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1488
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-virtual {p0, v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getRefineDuration(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1490
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-gtz v3, :cond_5

    .line 1491
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v7, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1494
    :cond_5
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 1496
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    if-nez v3, :cond_d

    .line 1497
    :cond_6
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->onAnimationEnd()V

    goto/16 :goto_0

    .line 1464
    :cond_7
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_8

    .line 1465
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1467
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1470
    :cond_9
    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 1471
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v3, :cond_a

    .line 1472
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1473
    :cond_a
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v3, :cond_b

    .line 1474
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1476
    :cond_b
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v2, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    goto :goto_1

    .line 1485
    :cond_c
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-gt v3, v4, :cond_4

    sget-object v3, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v3, v4, :cond_4

    .line 1486
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iput v8, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    goto :goto_2

    .line 1501
    :cond_d
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v5, v5, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalTimeSlot:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->nTotalFrames:I

    .line 1502
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;->EASEINOUT_CUBIC:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    iput-object v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->interpolate:Lcom/htc/sunny2/widget/presentation/SPresentation$INTERPOLATE;

    .line 1503
    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    const/4 v4, 0x2

    iput v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    .line 1505
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 1506
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enabledTouchEvent(Z)V

    .line 1508
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto/16 :goto_0
.end method

.method public setAdapter(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 792
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapter +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$3;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 800
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapter -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return-void
.end method

.method protected setAdapterW(Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 804
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapterW +"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->stopAnimation()V

    .line 806
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->unregisterDataSetObserver(Lcom/htc/sunny2/widget/presentation/SDataSetObserver;)V

    .line 809
    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    .line 810
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v0, :cond_1

    .line 811
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;-><init>(Lcom/htc/sunny2/widget/presentation/SAdapterView;)V

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    .line 812
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SAdapterView;->mDataSetObserver:Lcom/htc/sunny2/widget/presentation/SAdapterView$SAdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->registerDataSetObserver(Lcom/htc/sunny2/widget/presentation/SDataSetObserver;)V

    .line 815
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    .line 817
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->initContainers()V

    .line 818
    sget-object v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setAdapterW -"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void
.end method

.method public setClipSize(IIII)V
    .locals 6
    .parameter "nLeft"
    .parameter "nTop"
    .parameter "nRight"
    .parameter "nBottom"

    .prologue
    .line 1731
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$13;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny2/widget/presentation/SPresentation$13;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1742
    return-void
.end method

.method protected setContainerCount(I)V
    .locals 1
    .parameter "nContainerCount"

    .prologue
    .line 2663
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$15;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation$15;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 2679
    return-void
.end method

.method public setEdgeItemScrollRatio(F)V
    .locals 3
    .parameter "nRatio"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 682
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 683
    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    .line 689
    :goto_0
    return-void

    .line 684
    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    .line 685
    iput v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    goto :goto_0

    .line 687
    :cond_1
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemScrollRatio:F

    goto :goto_0
.end method

.method public setOnContainerClickListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerClickListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnContainerClickListener;

    .line 827
    return-void
.end method

.method public setOnLayoutListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 850
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mLayoutListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnLayoutListener;

    .line 851
    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 834
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectionChangeListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnSelectionChangeListener;

    .line 835
    return-void
.end method

.method public setOnStateListener(Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mStateListener:Lcom/htc/sunny2/widget/presentation/SPresentation$OnStateListener;

    .line 843
    return-void
.end method

.method public setReflectionGap(I)V
    .locals 0
    .parameter "nGap"

    .prologue
    .line 673
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionGap:I

    .line 674
    return-void
.end method

.method public setReflectionHeight(I)V
    .locals 0
    .parameter "nReflectionHeight"

    .prologue
    .line 664
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReflectionHeight:I

    .line 665
    return-void
.end method

.method public setSelection(IZ)V
    .locals 1
    .parameter "nUIPos"
    .parameter "bAnimated"

    .prologue
    .line 939
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/widget/presentation/SPresentation$7;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;IZ)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 946
    return-void
.end method

.method protected setSelectionW(IZ)V
    .locals 7
    .parameter "position"
    .parameter "bAnimated"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 949
    if-ltz p1, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge p1, v4, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ne v4, p1, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->isEnabledAnimation()Z

    move-result v4

    if-nez v4, :cond_2

    .line 954
    const/4 p2, 0x0

    .line 958
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByDataIndex(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v3

    .line 959
    .local v3, itemContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-ne v5, p2, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-ne v5, v4, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    if-nez v4, :cond_3

    .line 960
    iget v4, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->scrollToW(I)V

    goto :goto_0

    .line 964
    :cond_3
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    .line 965
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_UNKNOWN:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    iput-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDirection:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    .line 967
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    if-ne v5, v4, :cond_8

    .line 968
    const/4 v2, -0x1

    .line 969
    .local v2, dataIndex:I
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_1
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v4, :cond_7

    .line 970
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    .line 971
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_4

    .line 969
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 973
    :cond_4
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    add-int v2, v4, p1

    .line 975
    if-ltz v2, :cond_5

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v2, v4, :cond_6

    .line 976
    :cond_5
    iput-boolean v5, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 977
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 979
    :cond_6
    iput-boolean v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 980
    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_2

    .line 984
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersData()V

    .line 987
    .end local v0           #cid:I
    .end local v2           #dataIndex:I
    :cond_8
    invoke-virtual {p0, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->moveToTimeSlot(I)V

    .line 988
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder(Z)V

    .line 990
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifySelectionChange(I)V

    goto :goto_0
.end method

.method public setShiftOneItemMode(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 2331
    iput-boolean p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mShiftOneItem:Z

    .line 2332
    return-void
.end method

.method public setTimeSlotInterval(I)V
    .locals 1
    .parameter "nTimeSlot"

    .prologue
    .line 654
    iput p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    .line 655
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    .line 656
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x12

    .line 2591
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->hasAnimation()Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 2593
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->type:I

    packed-switch v0, :pswitch_data_0

    .line 2637
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->enableAnimation(Z)V

    .line 2638
    return-void

    .line 2599
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2600
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2601
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2606
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2607
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2608
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2613
    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2614
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2615
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2620
    :pswitch_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2621
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2622
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2627
    :pswitch_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAnimationInfo:Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$AnimationInfo;->reset()V

    .line 2628
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    .line 2629
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyStateChange(I)V

    goto :goto_0

    .line 2593
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected updateAllContainersData()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1829
    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v5, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return-void

    .line 1831
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_8

    aget-object v2, v0, v3

    .line 1832
    .local v2, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v2, :cond_3

    .line 1831
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1834
    :cond_3
    iget v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-ltz v5, :cond_6

    iget v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v5, v8, :cond_6

    .line 1835
    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    iget v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v8}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny2/SBitmap;

    move-result-object v1

    .line 1836
    .local v1, bmp:Lcom/htc/sunny2/SBitmap;
    if-eqz v1, :cond_5

    .line 1837
    iget-object v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v5, v1, v6}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V

    .line 1841
    :goto_3
    iput-boolean v6, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1846
    .end local v1           #bmp:Lcom/htc/sunny2/SBitmap;
    :goto_4
    iget-boolean v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mOpeningAnimationStart:Z

    if-nez v5, :cond_2

    .line 1847
    iget-object v8, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v5, :cond_4

    iget-boolean v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v5, :cond_7

    :cond_4
    move v5, v7

    :goto_5
    invoke-virtual {p0, v2, v8, v5}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_2

    .line 1839
    .restart local v1       #bmp:Lcom/htc/sunny2/SBitmap;
    :cond_5
    sget-object v5, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "null bitmap "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1843
    .end local v1           #bmp:Lcom/htc/sunny2/SBitmap;
    :cond_6
    iput-boolean v7, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1844
    const/4 v5, -0x1

    iput v5, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    goto :goto_4

    :cond_7
    move v5, v6

    .line 1847
    goto :goto_5

    .line 1851
    .end local v2           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_8
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    .line 1852
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataUpdated:Z

    goto :goto_0
.end method

.method public updateAllContainersLayout()V
    .locals 1

    .prologue
    .line 1856
    new-instance v0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/widget/presentation/SPresentation$14;-><init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1871
    return-void
.end method

.method protected updateBouncingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1932
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v0, v1, :cond_1

    .line 1933
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    .line 1941
    :goto_0
    return-void

    .line 1934
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v0, :cond_2

    .line 1935
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 1936
    :cond_2
    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v0, :cond_3

    .line 1937
    iput-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0

    .line 1939
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsBouncingState:Z

    goto :goto_0
.end method

.method protected updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 5
    .parameter "container"
    .parameter "layout"
    .parameter "bForceHidden"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2642
    iget-object v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v1, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setPosition(FFF)V

    .line 2644
    iget-object v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v1, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRotate(FFF)V

    .line 2645
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnabledReflection:Z

    if-ne v3, v0, :cond_0

    .line 2646
    iget-object v0, p1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mReflectSprite:Lcom/htc/sunny2/Sprite;

    const/high16 v1, 0x4334

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v4, v4}, Lcom/htc/sunny2/Sprite;->setRotate(FFF)V

    .line 2648
    :cond_0
    iget-object v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v0, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v1, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v1, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v2, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    iget v2, v2, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    .line 2650
    if-ne v3, p3, :cond_2

    .line 2651
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setVisibility(Z)V

    .line 2655
    :goto_0
    iget v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setAlpha(I)V

    .line 2657
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mPerformOpeningAnimation:Z

    if-ne v3, v0, :cond_1

    .line 2658
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateViewLayout()V

    .line 2660
    :cond_1
    return-void

    .line 2653
    :cond_2
    iget-boolean v0, p2, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected updateContainerLayoutPos(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V
    .locals 4
    .parameter "eNextDirection"

    .prologue
    .line 1817
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_0

    .line 1818
    const/4 v0, 0x0

    .local v0, cid:I
    :goto_0
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 1819
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 1818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1821
    .end local v0           #cid:I
    :cond_0
    sget-object v1, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne p1, v1, :cond_1

    .line 1822
    const/4 v0, 0x0

    .restart local v0       #cid:I
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge v0, v1, :cond_1

    .line 1823
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    rem-int/2addr v2, v3

    iput v2, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    .line 1822
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1826
    .end local v0           #cid:I
    :cond_1
    return-void
.end method

.method protected updateContainersOrder()V
    .locals 8

    .prologue
    .line 1153
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v4, v6, 0x2

    .line 1154
    .local v4, nCenterPos:I
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL:I

    div-int/lit8 v5, v6, 0x2

    .line 1155
    .local v5, nHalfTimeSlot:I
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v5, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .local v0, arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1157
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    .line 1156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1160
    .end local v0           #arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-lez v6, :cond_1

    .line 1161
    add-int/lit8 v4, v4, -0x1

    .line 1162
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1163
    .restart local v1       #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    .line 1162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1165
    .end local v0           #arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    if-gez v6, :cond_2

    .line 1166
    add-int/lit8 v4, v4, 0x1

    .line 1167
    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    .restart local v0       #arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1168
    .restart local v1       #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    iget v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setRenderOrder(I)V

    .line 1167
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1171
    .end local v0           #arr$:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    return-void
.end method

.method protected updateContainersOrder(Z)V
    .locals 3
    .parameter "bForce"

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    const/4 v0, 0x0

    .line 1132
    .local v0, nRegion:I
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mTimeSlot:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->TIMESLOT_INTERVAL_HALF:I

    if-gt v1, v2, :cond_2

    .line 1133
    const/4 v0, 0x1

    .line 1138
    :goto_1
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    if-eq v0, v1, :cond_3

    .line 1139
    iput v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderRegion:I

    .line 1140
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    .line 1141
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1135
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1142
    :cond_3
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    iget v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    if-eq v1, v2, :cond_4

    .line 1143
    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    iput v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mReorderItem:I

    .line 1144
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0

    .line 1145
    :cond_4
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainersOrder()V

    goto :goto_0
.end method

.method protected updateLayoutAtTimeSlot(IIIILcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V
    .locals 20
    .parameter "nTimeSlot"
    .parameter "nTotalTimeSlot"
    .parameter "nCurrentUIPos"
    .parameter "nNextUIPos"
    .parameter "layout"
    .parameter "isBouncing"

    .prologue
    .line 2691
    const/4 v10, 0x0

    .local v10, nStartX:F
    const/4 v5, 0x0

    .line 2692
    .local v5, nEndX:F
    const/4 v12, 0x0

    .local v12, nStartY:F
    const/4 v7, 0x0

    .line 2693
    .local v7, nEndY:F
    const/4 v14, 0x0

    .local v14, nStartZ:F
    const/4 v9, 0x0

    .line 2695
    .local v9, nEndZ:F
    const/4 v11, 0x0

    .local v11, nStartXF:F
    const/4 v6, 0x0

    .line 2696
    .local v6, nEndXF:F
    const/4 v13, 0x0

    .local v13, nStartYF:F
    const/4 v8, 0x0

    .line 2698
    .local v8, nEndYF:F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2700
    .local v4, nAbsTimeSlot:I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v3

    .line 2701
    .local v3, currentLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-nez v3, :cond_1

    .line 2733
    :cond_0
    :goto_0
    return-void

    .line 2702
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v15

    .line 2703
    .local v15, nextLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;
    if-eqz v15, :cond_0

    .line 2705
    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2706
    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2707
    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2708
    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2709
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2710
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2711
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 2714
    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v11, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2715
    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v6, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2716
    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2717
    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v8, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2718
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v6, v11

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v11, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2719
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v8, v13

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v13, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2720
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    const/high16 v17, 0x3f80

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 2722
    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2723
    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2724
    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 2725
    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v9, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 2726
    iget-object v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v12, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2727
    iget-object v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v7, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2728
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v5, v10

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mX:F

    .line 2729
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v7, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v12, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mY:F

    .line 2730
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunny2/view/Vector3F;

    move-object/from16 v16, v0

    int-to-float v0, v4

    move/from16 v17, v0

    sub-float v18, v9, v14

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v14, v1, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    .line 2732
    int-to-float v0, v4

    move/from16 v16, v0

    iget v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v18, v0

    iget v0, v3, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v16 .. v19}, Lcom/htc/sunny2/widget/presentation/SPresentation;->interpolateLinear(FFFF)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p5

    iput v0, v1, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    goto/16 :goto_0
.end method

.method protected updateNewContainer(Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;)V
    .locals 8
    .parameter "eNextDirection"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1765
    const/4 v2, -0x1

    .line 1767
    .local v2, nLayoutPos:I
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_1

    .line 1768
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v2, v4, -0x1

    .line 1775
    :goto_0
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerByLayoutPos(I)Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    move-result-object v1

    .line 1776
    .local v1, container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    if-nez v1, :cond_2

    .line 1814
    .end local v1           #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_0
    :goto_1
    return-void

    .line 1769
    :cond_1
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_0

    .line 1770
    const/4 v2, 0x0

    goto :goto_0

    .line 1778
    .restart local v1       #container:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;
    :cond_2
    const/4 v3, -0x1

    .line 1780
    .local v3, nNewDataIndex:I
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_6

    .line 1781
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 1782
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_R2L:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_5

    .line 1783
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    .line 1791
    :cond_3
    :goto_2
    if-ltz v3, :cond_4

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-lt v3, v4, :cond_7

    .line 1792
    :cond_4
    iput-boolean v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    .line 1793
    const/4 v4, -0x1

    iput v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 1802
    :goto_3
    iget v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    if-eq v4, v3, :cond_0

    .line 1803
    iput v3, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    .line 1804
    if-ltz v3, :cond_0

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mDataCount:I

    if-ge v3, v4, :cond_0

    .line 1805
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;->getItemBitmap(I)Lcom/htc/sunny2/SBitmap;

    move-result-object v0

    .line 1806
    .local v0, bmp:Lcom/htc/sunny2/SBitmap;
    if-eqz v0, :cond_9

    .line 1807
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mImageTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v4, v0, v6}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;Z)V

    .line 1811
    :goto_4
    iput-boolean v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mIsFirstRender:Z

    goto :goto_1

    .line 1784
    .end local v0           #bmp:Lcom/htc/sunny2/SBitmap;
    :cond_5
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;->D_L2R:Lcom/htc/sunny2/widget/presentation/SPresentation$DIRECTION;

    if-ne v4, p1, :cond_3

    .line 1785
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeNextUpdateIndex:I

    goto :goto_2

    .line 1788
    :cond_6
    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSelectedPos:I

    add-int v3, v4, v5

    goto :goto_2

    .line 1795
    :cond_7
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isFakeAnimation()Z

    move-result v4

    if-ne v7, v4, :cond_8

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mFakeAnimationControl:Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/widget/presentation/SPresentation$FakeAnimationControl;->isForceHidden(I)Z

    move-result v4

    if-ne v7, v4, :cond_8

    .line 1796
    iput-boolean v7, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    .line 1798
    :cond_8
    iput-boolean v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    goto :goto_3

    .line 1809
    .restart local v0       #bmp:Lcom/htc/sunny2/SBitmap;
    :cond_9
    sget-object v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null bitmap "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mDataIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected updateViewLayout()V
    .locals 10

    .prologue
    .line 1745
    const/4 v0, 0x0

    .local v0, nOffsetX:I
    const/4 v1, 0x0

    .line 1746
    .local v1, nOffsetY:I
    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isFillAfter()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1747
    :cond_0
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/animation/SAnimationController;->isPositionAnimation()Z

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1748
    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mAnimationController:Lcom/htc/sunny2/view/animation/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/animation/SAnimationController;->getCurrentPosition()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v2

    .line 1749
    .local v2, v:Lcom/htc/sunny2/view/Vector3F;
    iget v3, v2, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v3

    .line 1750
    iget v3, v2, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v1, v3

    .line 1757
    .end local v2           #v:Lcom/htc/sunny2/view/Vector3F;
    :cond_1
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListWidth:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mListHeight:I

    if-nez v3, :cond_4

    .line 1758
    :cond_2
    iget v3, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/Sunny2;->Scissor_SetArea(IIIII)V

    .line 1762
    :goto_1
    return-void

    .line 1753
    :cond_3
    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mX:F

    float-to-int v0, v3

    .line 1754
    iget-object v3, p0, Lcom/htc/sunny2/view/SView;->mTranslation:Lcom/htc/sunny2/view/Vector3F;

    iget v3, v3, Lcom/htc/sunny2/view/Vector3F;->mY:F

    float-to-int v1, v3

    goto :goto_0

    .line 1760
    :cond_4
    iget v3, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iget v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewWidth:I

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeL:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeR:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mSurfaceViewHeight:I

    iget v8, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeT:I

    iget v9, p0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mClipSizeB:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Lcom/htc/sunny2/Sunny2;->Scissor_SetArea(IIIII)V

    goto :goto_1
.end method
