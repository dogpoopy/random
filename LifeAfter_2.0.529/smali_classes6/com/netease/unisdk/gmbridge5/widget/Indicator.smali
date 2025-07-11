.class public abstract Lcom/netease/unisdk/gmbridge5/widget/Indicator;
.super Landroid/graphics/drawable/Drawable;
.source "Indicator.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private alpha:I

.field protected drawBounds:Landroid/graphics/Rect;

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mHasAnimators:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mUpdateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    .line 24
    const/16 v0, 0xff

    iput v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->alpha:I

    .line 26
    sget-object v0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    return-void
.end method

.method private ensureAnimators()V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mHasAnimators:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->onCreateAnimators()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mAnimators:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mHasAnimators:Z

    .line 122
    :cond_0
    return-void
.end method

.method private isStarted()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 131
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    return v1

    .line 133
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startAnimators()V
    .locals 3

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 97
    .local v1, "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 98
    .local v2, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 92
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private stopAnimators()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 109
    .local v1, "animator":Landroid/animation/ValueAnimator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 111
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 113
    .end local v1    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method


# virtual methods
.method public addUpdateListener(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 152
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mUpdateListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public centerX()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    return v0
.end method

.method public centerY()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 68
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 69
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public exactCenterX()F
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    return v0
.end method

.method public exactCenterY()F
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    return v0
.end method

.method public getAlpha()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->alpha:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDrawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 58
    const/4 v0, -0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 139
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    return v1

    .line 141
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setDrawBounds(Landroid/graphics/Rect;)V

    .line 159
    return-void
.end method

.method public abstract onCreateAnimators()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public postInvalidate()V
    .locals 0

    .line 170
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->invalidateSelf()V

    .line 171
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 48
    iput p1, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->alpha:I

    .line 49
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 43
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 64
    return-void
.end method

.method public setDrawBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->drawBounds:Landroid/graphics/Rect;

    .line 167
    return-void
.end method

.method public setDrawBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "drawBounds"    # Landroid/graphics/Rect;

    .line 162
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->setDrawBounds(IIII)V

    .line 163
    return-void
.end method

.method public start()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->ensureAnimators()V

    .line 79
    iget-object v0, p0, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->startAnimators()V

    .line 88
    invoke-virtual {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->invalidateSelf()V

    .line 89
    return-void
.end method

.method public stop()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/netease/unisdk/gmbridge5/widget/Indicator;->stopAnimators()V

    .line 127
    return-void
.end method
