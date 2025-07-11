.class public Lcom/netease/ntunisdk/piclib/view/PreviewImageView;
.super Lcom/netease/ntunisdk/piclib/view/TagImageView;
.source "PreviewImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;,
        Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;
    }
.end annotation


# static fields
.field private static final MODE_PIC_DRAG:I = 0x1

.field private static final MODE_PIC_UNABLE:I = 0x3

.field private static final MODE_PIC_ZOOM:I = 0x2


# instance fields
.field private cacheForMatrixValues:[F

.field private context:Landroid/content/Context;

.field private curMatrix:Landroid/graphics/Matrix;

.field private detector:Landroid/view/GestureDetector;

.field private haveDoubleTap:Z

.field private isNeedResetMatrix:Z

.field private mImageHeight:F

.field private mImageWidth:F

.field private mListener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxScale:F

.field private mMode:I

.field private mStartDis:F

.field private pMatrix:Landroid/graphics/Matrix;

.field private startPoint:Landroid/graphics/PointF;

.field private values:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 30
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->cacheForMatrixValues:[F

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    .line 43
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->context:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->construct()V

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

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/netease/ntunisdk/piclib/view/TagImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 30
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->cacheForMatrixValues:[F

    .line 34
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    .line 49
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->context:Landroid/content/Context;

    .line 50
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->construct()V

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

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/piclib/view/TagImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 30
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->cacheForMatrixValues:[F

    .line 34
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    .line 55
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->construct()V

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

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/piclib/view/TagImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 30
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->cacheForMatrixValues:[F

    .line 34
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    .line 62
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->context:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->construct()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->isPointValidForPaint(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)[F
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->values:[F

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->pMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private checkDxBound([FF)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curValues",
            "dx"
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 256
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageWidth:F

    const/4 v2, 0x0

    aget v3, p1, v2

    mul-float v3, v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x2

    .line 258
    aget v5, p1, v3

    add-float/2addr v5, p2

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    .line 259
    aget p1, p1, v3

    neg-float p2, p1

    goto :goto_0

    .line 260
    :cond_1
    aget v4, p1, v3

    add-float/2addr v4, p2

    aget v5, p1, v2

    mul-float v5, v5, v1

    sub-float/2addr v5, v0

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 261
    aget p2, p1, v2

    mul-float v1, v1, p2

    sub-float/2addr v1, v0

    neg-float p2, v1

    aget p1, p1, v3

    sub-float/2addr p2, p1

    :cond_2
    :goto_0
    return p2
.end method

.method private checkDyBound([FF)F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curValues",
            "dy"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 245
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageHeight:F

    const/4 v2, 0x4

    aget v3, p1, v2

    mul-float v3, v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x5

    .line 247
    aget v5, p1, v3

    add-float/2addr v5, p2

    cmpl-float v4, v5, v4

    if-lez v4, :cond_1

    .line 248
    aget p1, p1, v3

    neg-float p2, p1

    goto :goto_0

    .line 249
    :cond_1
    aget v4, p1, v3

    add-float/2addr v4, p2

    aget v5, p1, v2

    mul-float v5, v5, v1

    sub-float/2addr v5, v0

    neg-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 250
    aget p2, p1, v2

    mul-float v1, v1, p2

    sub-float/2addr v1, v0

    neg-float p2, v1

    aget p1, p1, v3

    sub-float/2addr p2, p1

    :cond_2
    :goto_0
    return p2
.end method

.method private checkMaxScale(F[FFF)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "scale",
            "values",
            "x",
            "y"
        }
    .end annotation

    const/4 v0, 0x0

    .line 200
    aget v1, p2, v0

    mul-float v1, v1, p1

    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMaxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 201
    aget p1, p2, v0

    div-float p1, v2, p1

    .line 202
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return p1
.end method

.method private checkRest()Z
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 173
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 175
    aget v2, v0, v1

    .line 177
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 178
    aget v0, v0, v1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private getMaxScale()F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 106
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 107
    aget v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method private isPointValidForPaint(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 270
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->cacheForMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 271
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->cacheForMatrixValues:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    .line 272
    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageWidth:F

    const/4 v4, 0x0

    aget v5, v1, v4

    mul-float v3, v3, v5

    const/4 v5, 0x5

    .line 273
    aget v5, v1, v5

    .line 274
    iget v6, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageHeight:F

    const/4 v7, 0x4

    aget v1, v1, v7

    mul-float v6, v6, v1

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpl-float v0, p1, v5

    if-ltz v0, :cond_0

    add-float/2addr v5, v6

    cmpg-float p1, p1, v5

    if-gtz p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private isZoomChanged()Z
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 235
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 237
    aget v2, v0, v1

    .line 239
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 240
    aget v0, v0, v1

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private reSetMatrix()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->checkRest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 167
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private setDragMatrix(Landroid/view/MotionEvent;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->isZoomChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 212
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    const/4 v4, 0x2

    .line 215
    aget v5, v0, v4

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v5, v2, v5

    if-gez v5, :cond_1

    :cond_0
    aget v4, v0, v4

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageWidth:F

    aget v7, v0, v1

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    const/high16 v4, -0x3e100000    # -30.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    mul-float v1, v2, v2

    mul-float v4, v3, v3

    add-float/2addr v1, v4

    float-to-double v4, v1

    .line 219
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_4

    .line 220
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 222
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 223
    invoke-direct {p0, v0, v2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->checkDxBound([FF)F

    move-result p1

    .line 224
    invoke-direct {p0, v0, v3}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->checkDyBound([FF)F

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 226
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setZoomMatrix(Landroid/view/MotionEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 188
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mStartDis:F

    div-float v1, v0, v1

    .line 189
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mStartDis:F

    .line 190
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 192
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x0

    .line 193
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 194
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr v2, p1

    div-float/2addr v2, v5

    .line 195
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->checkMaxScale(F[FFF)F

    .line 196
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public construct()V
    .locals 3

    .line 67
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 68
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->pMatrix:Landroid/graphics/Matrix;

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->curMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 70
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->values:[F

    .line 71
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;-><init>(Lcom/netease/ntunisdk/piclib/view/PreviewImageView;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mListener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;

    .line 72
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mListener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->detector:Landroid/view/GestureDetector;

    .line 73
    invoke-virtual {p0, p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public doMatrix()V
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    .line 82
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->values:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 87
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->values:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageWidth:F

    .line 88
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->values:[F

    const/4 v2, 0x5

    aget v2, v1, v2

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    const/4 v2, 0x4

    aget v1, v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageHeight:F

    .line 89
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getMaxScale()F

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMaxScale:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/netease/ntunisdk/piclib/view/TagImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_9

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_6

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 154
    iput v2, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    .line 156
    :cond_2
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mStartDis:F

    goto :goto_0

    :cond_3
    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 136
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 137
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mImageWidth:F

    const/4 v3, 0x0

    aget p1, p1, v3

    mul-float v1, v1, p1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    :cond_4
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    if-ne p1, v2, :cond_5

    .line 142
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setZoomMatrix(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_9

    .line 146
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setDragMatrix(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 131
    :cond_6
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->reSetMatrix()V

    .line 132
    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    goto :goto_0

    .line 120
    :cond_7
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v1, :cond_8

    .line 121
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->doMatrix()V

    .line 124
    :cond_8
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->isPointValidForPaint(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 125
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mMode:I

    .line 126
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_9
    :goto_0
    return v0
.end method

.method public setOnSingleTapUpListener(Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView;->mListener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;

    iput-object p1, v0, Lcom/netease/ntunisdk/piclib/view/PreviewImageView$myMatrixTouchListener;->listener:Lcom/netease/ntunisdk/piclib/view/PreviewImageView$OnSingleTapUpListener;

    return-void
.end method
