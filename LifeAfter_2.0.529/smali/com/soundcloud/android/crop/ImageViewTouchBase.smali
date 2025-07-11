.class abstract Lcom/soundcloud/android/crop/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field private static final SCALE_RATE:F = 1.25f


# instance fields
.field protected baseMatrix:Landroid/graphics/Matrix;

.field protected final bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

.field private final displayMatrix:Landroid/graphics/Matrix;

.field protected handler:Landroid/os/Handler;

.field private final matrixValues:[F

.field maxZoom:F

.field private onLayoutRunnable:Ljava/lang/Runnable;

.field private recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

.field protected suppMatrix:Landroid/graphics/Matrix;

.field thisHeight:I

.field thisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 57
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance p1, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 81
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 57
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance p1, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 57
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 60
    new-instance p1, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 63
    iput p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 69
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    return-void
.end method

.method private getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V
    .locals 7

    .line 261
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 262
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 264
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 265
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 266
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    div-float v4, v0, v2

    const/high16 v5, 0x40400000    # 3.0f

    .line 269
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v6, v1, v3

    .line 270
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    if-eqz p3, :cond_0

    .line 274
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 276
    :cond_0
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float v2, v2, v4

    sub-float/2addr v0, v2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, p1

    .line 277
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private init()V
    .locals 1

    .line 242
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/soundcloud/android/crop/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 150
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v1, p2}, Lcom/soundcloud/android/crop/RotateBitmap;->setRotation(I)V

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 152
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    if-eqz p1, :cond_1

    .line 153
    invoke-interface {p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateMaxZoom()F
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 302
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/RotateBitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method protected center(ZZ)V
    .locals 6

    .line 201
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 207
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 208
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 210
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 211
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float v5, v0, p2

    if-gez v5, :cond_1

    sub-float/2addr p2, v0

    div-float/2addr p2, v3

    .line 218
    iget v0, v2, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr p2, v0

    goto :goto_1

    .line 219
    :cond_1
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 220
    iget p2, v2, Landroid/graphics/RectF;->top:F

    neg-float p2, p2

    goto :goto_1

    .line 221
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float p2, v0, p2

    if-gez p2, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p1, :cond_6

    .line 227
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpg-float v0, v1, p1

    if-gez v0, :cond_4

    sub-float/2addr p1, v1

    div-float/2addr p1, v3

    .line 229
    iget v0, v2, Landroid/graphics/RectF;->left:F

    :goto_2
    sub-float v4, p1, v0

    goto :goto_3

    .line 230
    :cond_4
    iget v0, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    .line 231
    iget p1, v2, Landroid/graphics/RectF;->left:F

    neg-float v4, p1

    goto :goto_3

    .line 232
    :cond_5
    iget v0, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_6

    .line 233
    iget v0, v2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 237
    :cond_6
    :goto_3
    invoke-virtual {p0, v4, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 238
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 285
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 286
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result p1

    return p1
.end method

.method public getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 3

    .line 290
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 292
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 247
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 125
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(F)V

    const/4 p1, 0x1

    return p1

    .line 133
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 101
    iput p4, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    sub-int/2addr p5, p3

    .line 102
    iput p5, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 103
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 105
    iput-object p2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 106
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    iget-object p2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 110
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 0

    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 395
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 165
    new-instance v0, Lcom/soundcloud/android/crop/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/soundcloud/android/crop/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/RotateBitmap;Z)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 172
    new-instance v0, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase$1;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;Lcom/soundcloud/android/crop/RotateBitmap;Z)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/RotateBitmap;Landroid/graphics/Matrix;Z)V

    .line 182
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/RotateBitmap;->getRotation()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    if-eqz p2, :cond_2

    .line 189
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 192
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->calculateMaxZoom()F

    move-result p1

    iput p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    return-void
.end method

.method public setRecycler(Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/ImageViewTouchBase$Recycler;

    return-void
.end method

.method protected zoomIn()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 346
    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomIn(F)V

    return-void
.end method

.method protected zoomIn(F)V
    .locals 3

    .line 354
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    iget v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 362
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 364
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 365
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected zoomOut()V
    .locals 1

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 350
    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomOut(F)V

    return-void
.end method

.method protected zoomOut(F)V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/RotateBitmap;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 374
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 377
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float p1, v3, p1

    .line 378
    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 380
    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 381
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 385
    :goto_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 386
    invoke-virtual {p0, p1, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method protected zoomTo(F)V
    .locals 3

    .line 340
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 341
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 342
    invoke-virtual {p0, p1, v0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 2

    .line 307
    iget v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 314
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 315
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 316
    invoke-virtual {p0, p1, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10

    .line 321
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float/2addr p1, v0

    div-float v6, p1, p4

    .line 322
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 325
    iget-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;

    move-object v0, v9

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/soundcloud/android/crop/ImageViewTouchBase$2;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {p1, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
