.class public Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
.super Landroid/view/View;
.source "AVLoadingIndicatorView.java"


# static fields
.field private static final DEFAULT_INDICATOR:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

.field private static final MIN_DELAY:I = 0x1f4

.field private static final MIN_SHOW_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AVLoadingIndicatorView"


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

.field private mIndicatorColor:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mPostedHide:Z

.field private mPostedShow:Z

.field private mShouldStartAnimationDrawable:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    invoke-direct {v0}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;-><init>()V

    sput-object v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 72
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 77
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 82
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    .line 34
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 36
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 38
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    .line 88
    invoke-direct {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static synthetic access$002(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
    .param p1, "x1"    # J

    .line 22
    iput-wide p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    return p1
.end method

.method static synthetic access$300(Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;

    .line 22
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/unisdk/gmbridgelib/R$dimen;->uni_gm_avloading_wh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinWidth:I

    .line 93
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinWidth:I

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxWidth:I

    .line 94
    iput v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinHeight:I

    .line 95
    iput v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxHeight:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    .line 97
    const-string v0, "BallPulseIndicator"

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicator(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-nez v0, :cond_0

    .line 99
    sget-object v0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->DEFAULT_INDICATOR:Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicator(Lcom/netease/unisdk/gmbridge5/widget/Indicator;)V

    .line 101
    :cond_0
    return-void
.end method

.method private removeCallbacks()V
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 407
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method private updateDrawableBounds(II)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 288
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 289
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 291
    move v0, p1

    .line 292
    .local v0, "right":I
    move v1, p2

    .line 293
    .local v1, "bottom":I
    const/4 v2, 0x0

    .line 294
    .local v2, "top":I
    const/4 v3, 0x0

    .line 296
    .local v3, "left":I
    iget-object v4, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eqz v4, :cond_2

    .line 299
    invoke-virtual {v4}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->getIntrinsicWidth()I

    move-result v4

    .line 300
    .local v4, "intrinsicWidth":I
    iget-object v5, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v5}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->getIntrinsicHeight()I

    move-result v5

    .line 301
    .local v5, "intrinsicHeight":I
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    .line 302
    .local v6, "intrinsicAspect":F
    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    .line 303
    .local v7, "boundAspect":F
    cmpl-float v8, v6, v7

    if-eqz v8, :cond_1

    .line 304
    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    .line 306
    int-to-float v8, p2

    mul-float v8, v8, v6

    float-to-int v8, v8

    .line 307
    .local v8, "width":I
    sub-int v9, p1, v8

    div-int/lit8 v9, v9, 0x2

    .line 308
    .end local v3    # "left":I
    .local v9, "left":I
    add-int/2addr v8, v9

    .line 309
    .end local v0    # "right":I
    .local v8, "right":I
    move v0, v8

    move v3, v9

    goto :goto_0

    .line 311
    .end local v8    # "right":I
    .end local v9    # "left":I
    .restart local v0    # "right":I
    .restart local v3    # "left":I
    :cond_0
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 312
    .local v8, "height":I
    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    .line 313
    .end local v2    # "top":I
    .local v9, "top":I
    add-int v1, v9, v8

    move v2, v9

    .line 316
    .end local v8    # "height":I
    .end local v9    # "top":I
    .restart local v2    # "top":I
    :cond_1
    :goto_0
    iget-object v8, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v8, v3, v2, v0, v1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setBounds(IIII)V

    .line 318
    .end local v4    # "intrinsicWidth":I
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicAspect":F
    .end local v7    # "boundAspect":F
    :cond_2
    return-void
.end method

.method private updateDrawableState()V
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getDrawableState()[I

    move-result-object v0

    .line 374
    .local v0, "state":[I
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v1, v0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setState([I)Z

    .line 377
    :cond_0
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 327
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    .line 328
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 333
    .local v1, "saveCount":I
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 338
    iget-boolean v2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    if-eqz v2, :cond_0

    instance-of v2, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    .line 339
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    .line 340
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 343
    .end local v1    # "saveCount":I
    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 382
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 384
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0, p1, p2}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setHotspot(FF)V

    .line 387
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 368
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 369
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->updateDrawableState()V

    .line 370
    return-void
.end method

.method public getIndicator()Lcom/netease/unisdk/gmbridge5/widget/Indicator;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    return-object v0
.end method

.method public hide()V
    .locals 10

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 190
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    sub-long/2addr v1, v3

    .line 192
    .local v1, "diff":J
    const-wide/16 v5, 0x1f4

    cmp-long v7, v1, v5

    if-gez v7, :cond_1

    const-wide/16 v7, -0x1

    cmp-long v9, v3, v7

    if-nez v9, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-boolean v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    if-nez v3, :cond_2

    .line 202
    iget-object v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    sub-long/2addr v5, v1

    invoke-virtual {p0, v3, v5, v6}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedHide:Z

    goto :goto_1

    .line 196
    :cond_1
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 206
    :cond_2
    :goto_1
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 268
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 270
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 271
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 273
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->invalidate(IIII)V

    .line 275
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    goto :goto_0

    .line 276
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 278
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 391
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 392
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation()V

    .line 393
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks()V

    .line 394
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 398
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 401
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 402
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks()V

    .line 403
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 322
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 323
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 321
    .end local p0    # "this":Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "dw":I
    const/4 v1, 0x0

    .line 350
    .local v1, "dh":I
    :try_start_0
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    .line 351
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 352
    iget v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinWidth:I

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    .line 353
    iget v3, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMinHeight:I

    iget v4, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 356
    .end local p0    # "this":Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;
    :cond_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->updateDrawableState()V

    .line 358
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 359
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 361
    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v4

    .line 362
    .local v4, "measuredWidth":I
    invoke-static {v1, p2, v3}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->resolveSizeAndState(III)I

    move-result v3

    .line 363
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    monitor-exit p0

    return-void

    .line 346
    .end local v0    # "dw":I
    .end local v1    # "dh":I
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->updateDrawableBounds(II)V

    .line 283
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 258
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 259
    const/16 v0, 0x8

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_1

    .line 260
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 264
    :goto_1
    return-void
.end method

.method public setIndicator(Lcom/netease/unisdk/gmbridge5/widget/Indicator;)V
    .locals 2
    .param p1, "d"    # Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    .line 108
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eq v0, p1, :cond_2

    .line 109
    if-eqz v0, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 111
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    .line 116
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 117
    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1, p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postInvalidate()V

    .line 122
    :cond_2
    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 4
    .param p1, "indicatorName"    # Ljava/lang/String;

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "drawableClassName":Ljava/lang/StringBuilder;
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "defaultPackageName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, ".indicators"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v2    # "defaultPackageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 167
    .local v1, "drawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    .line 168
    .local v2, "indicator":Lcom/netease/unisdk/gmbridge5/widget/Indicator;
    invoke-virtual {p0, v2}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setIndicator(Lcom/netease/unisdk/gmbridge5/widget/Indicator;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "drawableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "indicator":Lcom/netease/unisdk/gmbridge5/widget/Indicator;
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 169
    :catch_2
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "AVLoadingIndicatorView"

    const-string v3, "Didn\'t find your class , check the name again !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 176
    :goto_1
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 139
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    .line 140
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    invoke-virtual {v0, p1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setColor(I)V

    .line 141
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    .line 246
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation()V

    goto :goto_1

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 254
    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 3

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mStartTime:J

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDismissed:Z

    .line 212
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mDelayedShow:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mPostedShow:Z

    .line 217
    :cond_0
    return-void
.end method

.method public smoothToHide()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public smoothToShow()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 181
    return-void
.end method

.method startAnimation()V
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postInvalidate()V

    .line 234
    return-void
.end method

.method stopAnimation()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->stop()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mShouldStartAnimationDrawable:Z

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->postInvalidate()V

    .line 242
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 221
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/AVLoadingIndicatorView;->mIndicator:Lcom/netease/unisdk/gmbridge5/widget/Indicator;

    if-eq p1, v0, :cond_1

    .line 222
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 221
    :goto_1
    return v0
.end method
