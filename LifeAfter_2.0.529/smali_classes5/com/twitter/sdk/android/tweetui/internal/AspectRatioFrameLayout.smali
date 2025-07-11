.class public Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field static final ADJUST_DIMENSION_HEIGHT:I = 0x0

.field static final ADJUST_DIMENSION_WIDTH:I = 0x1

.field private static final DEFAULT_ADJUST_DIMENSION:I = 0x0

.field private static final DEFAULT_ASPECT_RATIO:F = 1.0f


# instance fields
.field protected aspectRatio:D

.field private dimensionToAdjust:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p3}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->initAttributes(I)V

    return-void
.end method

.method private initAttributes(I)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    :try_start_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout_tw__frame_layout_aspect_ratio:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    .line 59
    sget v0, Lcom/twitter/sdk/android/tweetui/R$styleable;->AspectRatioFrameLayout_tw__frame_layout_dimension_to_adjust:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->dimensionToAdjust:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    throw v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .line 75
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 78
    iget v2, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->dimensionToAdjust:I

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_1

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 83
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result p1

    :goto_0
    sub-int/2addr p1, v0

    int-to-double v4, p1

    .line 85
    iget-wide v6, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    double-to-int p2, v4

    goto :goto_2

    .line 87
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 88
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_1

    .line 90
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 91
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result p1

    :goto_1
    sub-int/2addr p1, v1

    move p2, p1

    int-to-double v4, p2

    .line 93
    iget-wide v6, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-int p1, v4

    :goto_2
    add-int/2addr p1, v0

    .line 97
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    add-int/2addr p2, v1

    .line 98
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(D)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/twitter/sdk/android/tweetui/internal/AspectRatioFrameLayout;->aspectRatio:D

    return-void
.end method
