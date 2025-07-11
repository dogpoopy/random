.class public Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleProgressView"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private rectF:Landroid/graphics/RectF;

.field private sweepAngle:F

.field private valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;F)F
    .locals 0

    .line 17
    iput p1, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->sweepAngle:F

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 45
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->rectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3d4c0000    # -90.0f

    iget v4, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->sweepAngle:F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 51
    :try_start_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netease/ntunisdk/piclib/camera/R$dimen;->uni_piclib_catch_media_circle_progress_width_dp:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->paint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->paint:Landroid/graphics/Paint;

    const-string v3, "#0A84FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 58
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/netease/ntunisdk/piclib/camera/R$dimen;->uni_piclib_catch_media_circle_back_big_diameter_dp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 59
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0, v0, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->rectF:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    aput v2, v0, v1

    .line 61
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 62
    new-instance v1, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView$1;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView$1;-><init>(Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 73
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    sget-object p2, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDuration -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/camera/CircleProgressView;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method
