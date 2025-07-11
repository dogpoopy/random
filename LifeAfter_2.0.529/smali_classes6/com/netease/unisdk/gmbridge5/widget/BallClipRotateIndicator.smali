.class public Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;
.super Lcom/netease/unisdk/gmbridge5/widget/Indicator;
.source "BallClipRotateIndicator.java"


# instance fields
.field degrees:F

.field scaleFloat:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;-><init>()V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->scaleFloat:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 19
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 22
    const/high16 v0, 0x41400000    # 12.0f

    .line 23
    .local v0, "circleSpacing":F
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 24
    .local v1, "x":F
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 25
    .local v2, "y":F
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    iget v3, p0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->scaleFloat:F

    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 27
    iget v3, p0, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->degrees:F

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 28
    new-instance v5, Landroid/graphics/RectF;

    neg-float v3, v1

    add-float/2addr v3, v0

    neg-float v4, v2

    add-float/2addr v4, v0

    const/4 v6, 0x0

    add-float v7, v1, v6

    sub-float/2addr v7, v0

    add-float/2addr v6, v2

    sub-float/2addr v6, v0

    invoke-direct {v5, v3, v4, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 29
    .local v5, "rectF":Landroid/graphics/RectF;
    const/high16 v6, -0x3dcc0000    # -45.0f

    const/high16 v7, 0x43870000    # 270.0f

    const/4 v8, 0x0

    move-object v4, p1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 30
    return-void
.end method

.method public onCreateAnimators()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 36
    .local v1, "scaleAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 38
    new-instance v5, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$1;

    invoke-direct {v5, p0}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$1;-><init>(Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;)V

    invoke-virtual {p0, v1, v5}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 46
    .local v5, "rotateAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 48
    new-instance v2, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$2;

    invoke-direct {v2, p0}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator$2;-><init>(Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;)V

    invoke-virtual {p0, v5, v2}, Lcom/netease/unisdk/gmbridge5/widget/BallClipRotateIndicator;->addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x43340000    # 180.0f
        0x43b40000    # 360.0f
    .end array-data
.end method
