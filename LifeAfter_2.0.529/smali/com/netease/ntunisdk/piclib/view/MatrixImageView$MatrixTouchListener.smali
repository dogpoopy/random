.class public Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;
.super Ljava/lang/Object;
.source "MatrixImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/piclib/view/MatrixImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatrixTouchListener"
.end annotation


# static fields
.field private static final MODE_CROP:I = 0x7

.field private static final MODE_DRAG:I = 0x1

.field private static final MODE_PAINT:I = 0x3

.field private static final MODE_TEXT_DRAG:I = 0x5

.field private static final MODE_TEXT_ZOOM:I = 0x6

.field private static final MODE_UNABLE:I = 0x4

.field private static final MODE_ZOOM:I = 0x2


# instance fields
.field private curID:J

.field private entries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private haveChacked:Z

.field private mCurrentMatrix:Landroid/graphics/Matrix;

.field mMaxScale:F

.field private mMode:I

.field private mStartDis:F

.field private startAngle:F

.field private startPoint:Landroid/graphics/PointF;

.field private startTextX:F

.field private startTextY:F

.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

.field time_down:J


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1164
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1135
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 1144
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->getMaxScale()F

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMaxScale:F

    const-wide/16 v1, 0x0

    .line 1145
    iput-wide v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->time_down:J

    .line 1154
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    .line 1155
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    .line 1157
    iput-wide v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    .line 1159
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->haveChacked:Z

    .line 1165
    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    .line 1166
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1167
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1168
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1169
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    .line 1170
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->isIschacked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1171
    iput-wide v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    :cond_1
    return-void
.end method

.method private GetCross(FFFFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x1",
            "y1",
            "x2",
            "y2",
            "x",
            "y"
        }
    .end annotation

    sub-float/2addr p3, p1

    sub-float/2addr p6, p2

    mul-float p3, p3, p6

    sub-float/2addr p5, p1

    sub-float/2addr p4, p2

    mul-float p5, p5, p4

    sub-float/2addr p3, p5

    return p3
.end method

.method private appendHistory()V
    .locals 8

    .line 1970
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1975
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Path;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 1977
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1978
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1979
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1980
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1983
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v3, :cond_1

    .line 1984
    new-instance v1, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1985
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v6

    aget v6, v6, v4

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v7

    aget v4, v7, v4

    add-float/2addr v6, v4

    mul-float v5, v5, v6

    div-float/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1986
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Ljava/util/Stack;

    move-result-object v2

    new-instance v4, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;

    invoke-direct {v4, v0, v1}, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1988
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->setUndoEnable(Z)V

    goto :goto_0

    .line 1990
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 1991
    new-instance v1, Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1992
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v6

    aget v6, v6, v4

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v7

    aget v4, v7, v4

    add-float/2addr v6, v4

    mul-float v5, v5, v6

    div-float/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1993
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Ljava/util/Stack;

    move-result-object v2

    new-instance v4, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;

    invoke-direct {v4, v0, v1}, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1995
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->setUndoEnable(Z)V

    .line 1999
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2602(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;Landroid/graphics/Path;)Landroid/graphics/Path;

    .line 2001
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2002
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->callback(Z)V

    :cond_3
    return-void
.end method

.method private checkDxBound([FF)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "dx"
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_4

    .line 1882
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1884
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    const/16 v5, -0x5a

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    const/16 v5, -0x10e

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1885
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1886
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    :goto_1
    const/16 v5, 0x8

    new-array v5, v5, [F

    .line 1888
    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aput v6, v5, v2

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v5, v6

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aput v6, v5, v3

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    aput v7, v5, v6

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x6

    aput v6, v5, v7

    const/4 v6, 0x7

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    aput v8, v5, v6

    .line 1889
    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1890
    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v6

    aget v8, p1, v2

    mul-float v6, v6, v8

    cmpg-float v6, v6, v0

    if-gez v6, :cond_2

    return v1

    .line 1892
    :cond_2
    aget v1, p1, v3

    add-float/2addr v1, p2

    aget v6, p1, v3

    add-float/2addr v6, v4

    aget v8, v5, v2

    sub-float/2addr v6, v8

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 1893
    aget p1, v5, v2

    sub-float/2addr v4, p1

    move p2, v4

    goto/16 :goto_2

    .line 1894
    :cond_3
    aget v1, p1, v3

    add-float/2addr v1, p2

    aget p1, p1, v3

    aget v2, v5, v7

    sub-float/2addr p1, v2

    add-float/2addr p1, v0

    add-float/2addr p1, v4

    cmpg-float p1, v1, p1

    if-gez p1, :cond_7

    .line 1895
    aget p1, v5, v7

    neg-float p1, p1

    add-float/2addr p1, v0

    add-float/2addr p1, v4

    move p2, p1

    goto :goto_2

    .line 1897
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    .line 1898
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v4

    aget v5, p1, v2

    mul-float v4, v4, v5

    cmpg-float v0, v4, v0

    if-gez v0, :cond_5

    return v1

    .line 1900
    :cond_5
    aget v0, p1, v3

    add-float/2addr v0, p2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1901
    aget p1, p1, v3

    neg-float p1, p1

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p1

    goto :goto_2

    .line 1902
    :cond_6
    aget v0, p1, v3

    add-float/2addr v0, p2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v1

    aget v4, p1, v2

    mul-float v1, v1, v4

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 1903
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result p2

    aget v0, p1, v2

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v0

    neg-float p2, p2

    aget p1, p1, v3

    sub-float/2addr p2, p1

    :cond_7
    :goto_2
    return p2
.end method

.method private checkDyBound([FF)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "dy"
        }
    .end annotation

    .line 1848
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-nez v0, :cond_4

    .line 1850
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 1852
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    const/16 v5, -0x5a

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    const/16 v5, -0x10e

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1853
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1854
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    :goto_1
    const/16 v5, 0x8

    new-array v5, v5, [F

    const/4 v6, 0x0

    .line 1856
    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aput v7, v5, v6

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x1

    aput v6, v5, v7

    const/4 v6, 0x2

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    aput v8, v5, v6

    const/4 v6, 0x3

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    aput v8, v5, v6

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aput v6, v5, v2

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aput v6, v5, v3

    const/4 v6, 0x6

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    aput v8, v5, v6

    const/4 v6, 0x7

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    aput v8, v5, v6

    .line 1857
    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1859
    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v6

    aget v2, p1, v2

    mul-float v6, v6, v2

    cmpg-float v2, v6, v0

    if-gez v2, :cond_2

    return v1

    .line 1862
    :cond_2
    aget v1, p1, v3

    add-float/2addr v1, p2

    aget v2, p1, v3

    add-float/2addr v2, v4

    aget v6, v5, v7

    sub-float/2addr v2, v6

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1863
    aget p1, v5, v7

    sub-float/2addr v4, p1

    move p2, v4

    goto/16 :goto_2

    .line 1865
    :cond_3
    aget v1, p1, v3

    add-float/2addr v1, p2

    aget p1, p1, v3

    aget v2, v5, v3

    sub-float/2addr p1, v2

    add-float/2addr p1, v0

    add-float/2addr p1, v4

    cmpg-float p1, v1, p1

    if-gez p1, :cond_7

    .line 1866
    aget p1, v5, v3

    neg-float p1, p1

    add-float/2addr p1, v0

    add-float/2addr p1, v4

    move p2, p1

    goto :goto_2

    .line 1869
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    .line 1870
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v4

    aget v5, p1, v2

    mul-float v4, v4, v5

    cmpg-float v0, v4, v0

    if-gez v0, :cond_5

    return v1

    .line 1872
    :cond_5
    aget v0, p1, v3

    add-float/2addr v0, p2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 1873
    aget p1, p1, v3

    neg-float p1, p1

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p1

    goto :goto_2

    .line 1874
    :cond_6
    aget v0, p1, v3

    add-float/2addr v0, p2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v1

    aget v4, p1, v2

    mul-float v1, v1, v4

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v4

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 1875
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result p2

    aget v0, p1, v2

    mul-float p2, p2, v0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    neg-float p2, p2

    aget p1, p1, v3

    sub-float/2addr p2, p1

    :cond_7
    :goto_2
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

    .line 1722
    aget v1, p2, v0

    mul-float v1, v1, p1

    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMaxScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1723
    aget p1, p2, v0

    div-float p1, v2, p1

    .line 1724
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return p1
.end method

.method private checkRest()Z
    .locals 7

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1955
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 1957
    aget v2, v0, v1

    .line 1959
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1960
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    .line 1961
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    .line 1962
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v5

    aget v6, v0, v1

    mul-float v5, v5, v6

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v2

    const/4 v5, 0x4

    aget v0, v0, v5

    mul-float v2, v2, v0

    cmpl-float v0, v3, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1964
    :cond_2
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1966
    aget v0, v0, v1

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private conAngle(Landroid/view/MotionEvent;)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1588
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v4, 0x2

    aput v2, v0, v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v2, 0x3

    aput p1, v0, v2

    .line 1589
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1590
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {p1, v5, v6, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1591
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1592
    aget p1, v0, v4

    aget v1, v0, v1

    sub-float/2addr p1, v1

    float-to-double v4, p1

    .line 1593
    aget p1, v0, v2

    aget v0, v0, v3

    sub-float/2addr p1, v0

    float-to-double v0, p1

    div-double/2addr v0, v4

    .line 1595
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 1919
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/4 v4, 0x2

    aput v2, v0, v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v2, 0x3

    aput p1, v0, v2

    .line 1920
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1921
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {p1, v5, v6, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1922
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1923
    aget p1, v0, v4

    aget v1, v0, v1

    sub-float/2addr p1, v1

    float-to-double v4, p1

    .line 1924
    aget p1, v0, v2

    aget v0, v0, v3

    sub-float/2addr p1, v0

    float-to-double v0, p1

    mul-double v4, v4, v4

    mul-double v0, v0, v0

    add-double/2addr v4, v0

    .line 1926
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private distancePoins(FFFF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "endX",
            "endY"
        }
    .end annotation

    sub-float/2addr p1, p3

    sub-float/2addr p2, p4

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 1534
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private doDraw(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1730
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 1731
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1732
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1733
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1735
    aget p1, v1, v3

    .line 1736
    aget v1, v1, v2

    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 1738
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v4, v3

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aput v5, v4, v2

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v4, v0

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x3

    aput v5, v4, v7

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x4

    aput v5, v4, v7

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x5

    aput v5, v4, v8

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x6

    aput v5, v4, v8

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x7

    aput v5, v4, v8

    .line 1739
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1741
    aget v5, v4, v3

    .line 1742
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v8

    iget-object v9, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v9

    aget v9, v9, v3

    mul-float v8, v8, v9

    .line 1743
    aget v4, v4, v2

    .line 1744
    iget-object v9, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v9

    iget-object v10, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v10}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v10

    aget v7, v10, v7

    mul-float v9, v9, v7

    .line 1747
    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v7

    if-ne v7, v2, :cond_3

    cmpg-float v0, p1, v5

    if-gez v0, :cond_0

    .line 1750
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    add-float/2addr p1, v5

    const/4 v3, 0x1

    :cond_0
    add-float/2addr v5, v8

    cmpl-float v0, p1, v5

    if-lez v0, :cond_1

    .line 1755
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    sub-float/2addr v5, p1

    move p1, v5

    const/4 v3, 0x1

    :cond_1
    cmpg-float v0, v1, v4

    if-gez v0, :cond_2

    .line 1760
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    add-float v1, v4, v0

    const/4 v3, 0x1

    :cond_2
    add-float/2addr v4, v9

    cmpl-float v0, v1, v4

    if-lez v0, :cond_7

    .line 1765
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    sub-float v1, v4, v0

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 1768
    :cond_3
    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v7

    if-ne v7, v0, :cond_7

    .line 1769
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float/2addr v0, v6

    add-float v6, v5, v0

    cmpg-float v7, p1, v6

    if-gez v7, :cond_4

    move p1, v6

    const/4 v3, 0x1

    :cond_4
    add-float/2addr v5, v8

    sub-float/2addr v5, v0

    cmpl-float v6, p1, v5

    if-lez v6, :cond_5

    move p1, v5

    const/4 v3, 0x1

    :cond_5
    add-float v5, v4, v0

    cmpg-float v6, v1, v5

    if-gez v6, :cond_6

    move v1, v5

    const/4 v3, 0x1

    :cond_6
    add-float/2addr v4, v9

    sub-float v0, v4, v0

    cmpl-float v4, v1, v0

    if-lez v4, :cond_7

    move v1, v0

    goto :goto_0

    .line 1791
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1792
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    .line 1794
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1795
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->callback(Z)V

    :cond_8
    return v3
.end method

.method private editText()V
    .locals 4

    .line 1600
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1602
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1603
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getColor()I

    move-result v2

    .line 1604
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->setEditText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V

    .line 1605
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->EditTextCallBack(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private getCropFrame(Landroid/view/MotionEvent;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 1490
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1491
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1492
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1493
    aget p1, v1, v3

    .line 1494
    aget v1, v1, v2

    .line 1497
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v1, v4, v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->distancePoins(FFFF)F

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    return v3

    .line 1501
    :cond_0
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->distancePoins(FFFF)F

    move-result v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    return v2

    .line 1505
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->distancePoins(FFFF)F

    move-result v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_2

    return v0

    .line 1509
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->distancePoins(FFFF)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1513
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 1517
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 1521
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_6

    const/4 p1, 0x6

    return p1

    .line 1525
    :cond_6
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_7

    const/4 p1, 0x7

    return p1

    :cond_7
    const/4 p1, -0x1

    return p1
.end method

.method private getMaxScale()F
    .locals 2

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1149
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 1150
    aget v0, v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    return v0
.end method

.method private isMatrixEnable()V
    .locals 2

    .line 2022
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_0

    .line 2023
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2025
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    :goto_0
    return-void
.end method

.method private isPointValidForPaint(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 2036
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 2037
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2038
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2039
    aget p1, v1, v3

    .line 2040
    aget v1, v1, v2

    .line 2042
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v4, 0x8

    new-array v4, v4, [F

    .line 2044
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v4, v3

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aput v5, v4, v2

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aput v5, v4, v0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x3

    aput v0, v4, v5

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x4

    aput v0, v4, v5

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x5

    aput v0, v4, v6

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x6

    aput v0, v4, v6

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x7

    aput v0, v4, v6

    .line 2045
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2047
    aget v0, v4, v3

    .line 2048
    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v7

    aget v7, v7, v3

    mul-float v6, v6, v7

    .line 2049
    aget v4, v4, v2

    .line 2050
    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v7

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v8

    aget v5, v8, v5

    mul-float v7, v7, v5

    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float/2addr v0, v6

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    cmpl-float p1, v1, v4

    if-ltz p1, :cond_0

    add-float/2addr v4, v7

    cmpg-float p1, v1, v4

    if-gtz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isTextDeleteValidForTextPaint2(Landroid/view/MotionEvent;Ljava/lang/Long;)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "id"
        }
    .end annotation

    .line 1612
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 1617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 1618
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1619
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1620
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1621
    aget p1, v2, v0

    .line 1622
    aget v2, v2, v3

    .line 1624
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    new-array v4, v1, [F

    .line 1626
    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v5

    aput v5, v4, v0

    .line 1627
    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result v5

    aput v5, v4, v3

    .line 1628
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1632
    aget v5, v4, v0

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getW()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    .line 1633
    aget v7, v4, v3

    iget-object v9, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v9

    div-float/2addr v9, v8

    sub-float/2addr v7, v9

    .line 1635
    aget v8, v4, v0

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getW()F

    move-result v9

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    .line 1636
    aget v4, v4, v3

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getH()F

    move-result v9

    div-float/2addr v9, v6

    add-float/2addr v4, v9

    .line 1638
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 1639
    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getAngle()F

    move-result p2

    invoke-virtual {v9, p2, v8, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    new-array p2, v1, [F

    aput v5, p2, v0

    aput v7, p2, v3

    .line 1643
    invoke-virtual {v9, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1645
    aget v1, p2, v0

    .line 1646
    aget p2, p2, v3

    sub-float/2addr p1, v1

    mul-float p1, p1, p1

    sub-float/2addr v2, p2

    mul-float v2, v2, v2

    add-float/2addr p1, v2

    float-to-double p1, p1

    .line 1648
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 1651
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result p2

    div-float/2addr p2, v6

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isTextPointValidForTextPaint2(Landroid/view/MotionEvent;Ljava/lang/Long;)Z
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "id"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 2060
    iget-object v0, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    const/4 v9, 0x2

    new-array v1, v9, [F

    .line 2065
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v10, 0x1

    aput v2, v1, v10

    .line 2066
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 2067
    iget-object v3, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v2, v3, v4, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2068
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2069
    aget v11, v1, v8

    .line 2070
    aget v12, v1, v10

    .line 2071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u624b\u6307\u843d\u70b9"

    invoke-static {v2, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v9, [F

    .line 2073
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v2

    aput v2, v1, v8

    .line 2074
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result v2

    aput v2, v1, v10

    .line 2075
    iget-object v2, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2077
    aget v2, v1, v8

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getW()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 2078
    aget v3, v1, v10

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getH()F

    move-result v4

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 2080
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 2081
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getAngle()F

    move-result v6

    invoke-virtual {v4, v6, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    const/16 v2, 0x8

    new-array v13, v2, [F

    .line 2084
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getW()F

    move-result v2

    iget-object v3, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    .line 2086
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getH()F

    move-result v0

    iget-object v3, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v0, v3

    .line 2088
    aget v3, v1, v8

    iget-object v5, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v5

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    aput v3, v13, v8

    .line 2090
    aget v1, v1, v10

    iget-object v3, v7, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v3

    div-float/2addr v3, v6

    sub-float/2addr v1, v3

    aput v1, v13, v10

    .line 2091
    aget v1, v13, v8

    add-float/2addr v1, v2

    aput v1, v13, v9

    .line 2092
    aget v1, v13, v10

    const/4 v14, 0x3

    aput v1, v13, v14

    .line 2093
    aget v1, v13, v8

    const/4 v15, 0x4

    aput v1, v13, v15

    .line 2094
    aget v1, v13, v10

    add-float/2addr v1, v0

    const/16 v16, 0x5

    aput v1, v13, v16

    .line 2095
    aget v0, v13, v9

    const/16 v17, 0x6

    aput v0, v13, v17

    .line 2096
    aget v0, v13, v16

    const/16 v18, 0x7

    aput v0, v13, v18

    .line 2097
    invoke-virtual {v4, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2098
    aget v1, v13, v8

    aget v2, v13, v10

    aget v3, v13, v9

    aget v4, v13, v14

    move-object/from16 v0, p0

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->GetCross(FFFFFF)F

    move-result v19

    aget v1, v13, v17

    aget v2, v13, v18

    aget v3, v13, v15

    aget v4, v13, v16

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->GetCross(FFFFFF)F

    move-result v0

    mul-float v19, v19, v0

    const/16 v20, 0x0

    cmpl-float v0, v19, v20

    if-ltz v0, :cond_1

    aget v1, v13, v8

    aget v2, v13, v10

    aget v3, v13, v15

    aget v4, v13, v16

    move-object/from16 v0, p0

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->GetCross(FFFFFF)F

    move-result v15

    aget v1, v13, v17

    aget v2, v13, v18

    aget v3, v13, v9

    aget v4, v13, v14

    invoke-direct/range {v0 .. v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->GetCross(FFFFFF)F

    move-result v0

    mul-float v15, v15, v0

    cmpl-float v0, v15, v20

    if-ltz v0, :cond_1

    const/4 v8, 0x1

    :cond_1
    return v8
.end method

.method private isZoomChanged()Z
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1910
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x0

    .line 1912
    aget v2, v0, v1

    .line 1914
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1915
    aget v0, v0, v1

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private pathMoveTo(Landroid/view/MotionEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 2009
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 2010
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {p1, v3, v4, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2011
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2013
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Path;

    move-result-object p1

    aget v2, v0, v2

    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2015
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2016
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->callback(Z)V

    :cond_0
    return-void
.end method

.method private reSetMatrix()V
    .locals 9

    .line 1930
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->checkRest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1933
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1935
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v2

    aget v0, v2, v0

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    aput v0, v1, v4

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v0

    const/4 v2, 0x5

    aget v0, v0, v2

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v2

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v5

    const/4 v6, 0x4

    aget v5, v5, v6

    mul-float v2, v2, v5

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 1936
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v7

    div-float/2addr v5, v3

    aget v7, v1, v4

    sub-float/2addr v5, v7

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    div-float/2addr v7, v3

    aget v1, v1, v2

    sub-float/2addr v7, v1

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1938
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v2

    aget v2, v2, v4

    mul-float v1, v1, v2

    div-float/2addr v0, v1

    .line 1939
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v2

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v4

    aget v4, v4, v6

    mul-float v2, v2, v4

    div-float/2addr v1, v2

    .line 1941
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v5

    div-float/2addr v1, v3

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v3

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1943
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1948
    :goto_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method

.method private resetText()V
    .locals 10

    .line 1539
    iget-wide v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 1543
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 1545
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result v4

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 1546
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1547
    aget v4, v3, v5

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getW()F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 1548
    aget v3, v3, v6

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getH()F

    move-result v7

    div-float/2addr v7, v8

    add-float/2addr v3, v7

    const/16 v7, 0x8

    new-array v7, v7, [F

    .line 1550
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    aput v8, v7, v5

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    aput v8, v7, v6

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    aput v8, v7, v2

    const/4 v2, 0x3

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    aput v8, v7, v2

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x4

    aput v2, v7, v8

    const/4 v2, 0x5

    iget-object v9, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    aput v9, v7, v2

    const/4 v2, 0x6

    iget-object v9, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    aput v9, v7, v2

    const/4 v2, 0x7

    iget-object v9, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    aput v9, v7, v2

    .line 1551
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1553
    aget v2, v7, v5

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_2

    aget v2, v7, v5

    iget-object v9, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v9}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v9

    aget v5, v1, v5

    mul-float v9, v9, v5

    add-float/2addr v2, v9

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_2

    aget v2, v7, v6

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_2

    aget v2, v7, v6

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$2100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v4

    aget v1, v1, v8

    mul-float v4, v4, v1

    add-float/2addr v2, v4

    cmpg-float v1, v3, v2

    if-gtz v1, :cond_2

    goto :goto_0

    .line 1557
    :cond_2
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startTextX:F

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextX(F)V

    .line 1558
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startTextY:F

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextY(F)V

    :goto_0
    return-void
.end method

.method private setCropPoints(Landroid/view/MotionEvent;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1378
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 1379
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1380
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1381
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1382
    aget p1, v1, v3

    .line 1383
    aget v1, v1, v2

    .line 1385
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1387
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v4

    aget v4, v4, v0

    .line 1388
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v6

    aget v3, v6, v3

    mul-float v5, v5, v3

    .line 1389
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v3

    const/4 v6, 0x5

    aget v3, v3, v6

    .line 1390
    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F

    move-result v7

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v8

    const/4 v9, 0x4

    aget v8, v8, v9

    mul-float v7, v7, v8

    .line 1391
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v8

    const/4 v10, 0x0

    const/high16 v11, 0x43c80000    # 400.0f

    if-nez v8, :cond_1

    .line 1393
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1394
    invoke-static {v10, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1395
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v11

    invoke-static {v8, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1396
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1397
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1398
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v11

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1400
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iput p1, v8, Landroid/graphics/PointF;->x:F

    .line 1401
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iput v1, v8, Landroid/graphics/PointF;->y:F

    .line 1402
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iput p1, v8, Landroid/graphics/PointF;->x:F

    .line 1403
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v8

    iput v1, v8, Landroid/graphics/PointF;->y:F

    .line 1405
    :cond_1
    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v8

    if-ne v2, v8, :cond_2

    .line 1407
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v11

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float v2, v4, v5

    .line 1408
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1409
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1410
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1411
    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1412
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v11

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1414
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 1415
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 1416
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 1417
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v2

    iput v1, v2, Landroid/graphics/PointF;->y:F

    .line 1419
    :cond_2
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 1421
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1422
    invoke-static {v10, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1423
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v11

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1424
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1425
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v1, v3, v7

    .line 1426
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1428
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1429
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1430
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1431
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_3
    const/4 v0, 0x3

    .line 1433
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1435
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v11

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float v0, v4, v5

    .line 1436
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1437
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1438
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1439
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    add-float v1, v3, v7

    .line 1440
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1442
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1443
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1444
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1445
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1447
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v0

    if-ne v9, v0, :cond_5

    .line 1449
    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1450
    invoke-static {v10, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1451
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v11

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1453
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1454
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1456
    :cond_5
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v0

    if-ne v6, v0, :cond_6

    .line 1458
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1459
    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1460
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v11

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1462
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 1463
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_6
    const/4 v0, 0x6

    .line 1465
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 1467
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v11

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr v4, v5

    .line 1468
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1469
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1471
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 1472
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->x:F

    :cond_7
    const/4 p1, 0x7

    .line 1474
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 1476
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, v11

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1477
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr v3, v7

    .line 1478
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1480
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 1481
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;

    move-result-object v0

    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 1483
    :cond_8
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    return-void
.end method

.method private setDragMatrix(Landroid/view/MotionEvent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 1804
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->isZoomChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [F

    .line 1805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v0, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v5

    .line 1806
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1807
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    invoke-virtual {p1, v3, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1808
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1810
    aget p1, v0, v6

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    .line 1811
    aget v3, v0, v5

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float v4, p1, p1

    mul-float v7, v3, v3

    add-float/2addr v4, v7

    float-to-double v7, v4

    .line 1813
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpl-double v4, v7, v1

    if-lez v4, :cond_1

    .line 1814
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    aget v2, v0, v6

    aget v0, v0, v5

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 1816
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1818
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1819
    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->checkDxBound([FF)F

    move-result p1

    .line 1820
    invoke-direct {p0, v0, v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->checkDyBound([FF)F

    move-result v0

    .line 1821
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1822
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_0

    :cond_0
    new-array v0, v3, [F

    .line 1826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v0, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v5

    .line 1827
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1828
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v4

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    invoke-virtual {p1, v3, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1829
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1831
    aget p1, v0, v6

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    .line 1832
    aget v3, v0, v5

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float v4, p1, p1

    mul-float v7, v3, v3

    add-float/2addr v4, v7

    float-to-double v7, v4

    .line 1834
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    cmpl-double v4, v7, v1

    if-lez v4, :cond_1

    .line 1835
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    aget v2, v0, v6

    aget v0, v0, v5

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 1837
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1838
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1839
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->checkDxBound([FF)F

    move-result p1

    .line 1840
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->checkDyBound([FF)F

    move-result v0

    .line 1841
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1842
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTextDragMatrix2(Landroid/view/MotionEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1565
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 1568
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1569
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v4, v5, v7}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1570
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1572
    aget p1, v1, v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v4

    .line 1573
    aget v4, v1, v2

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float v5, p1, p1

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    .line 1575
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_1

    .line 1576
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    aget v6, v1, v3

    aget v1, v1, v2

    invoke-virtual {v5, v6, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 1577
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1579
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v2

    aget v2, v2, v3

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextX(F)V

    .line 1580
    invoke-virtual {v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result p1

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v1

    const/4 v2, 0x4

    aget v1, v1, v2

    div-float/2addr v4, v1

    add-float/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextY(F)V

    .line 1581
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method private setTextZoom2(Landroid/view/MotionEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    .line 1656
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 1657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    new-array v0, v1, [F

    .line 1658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v0, v4

    .line 1659
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1660
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {p1, v1, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1661
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1662
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    aget v1, v0, v2

    aget v0, v0, v4

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    return-void

    .line 1666
    :cond_1
    iget-wide v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    return-void

    .line 1667
    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 1668
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->conAngle(Landroid/view/MotionEvent;)F

    move-result p1

    .line 1669
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object v1

    iget-wide v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-eqz v1, :cond_6

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    .line 1671
    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1672
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v4

    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    div-float v5, v0, v5

    mul-float v4, v4, v5

    .line 1673
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextMaxScale()F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_3

    .line 1674
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextMaxScale()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextScale(F)V

    goto :goto_0

    .line 1676
    :cond_3
    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextScale(F)V

    .line 1677
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v4

    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    sub-float v5, v0, v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v6

    aget v2, v6, v2

    div-float/2addr v5, v2

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-virtual {v1, v4}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextX(F)V

    .line 1678
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result v2

    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F

    move-result-object v5

    const/4 v6, 0x4

    aget v5, v5, v6

    div-float/2addr v4, v5

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextY(F)V

    .line 1680
    :goto_0
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v2, -0x3d600000    # -80.0f

    const/high16 v3, 0x42a00000    # 80.0f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_4

    .line 1683
    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startAngle:F

    cmpg-float v4, v4, v2

    if-gez v4, :cond_4

    sub-float v0, p1, v0

    goto :goto_1

    :cond_4
    cmpg-float v2, p1, v2

    if-gez v2, :cond_5

    .line 1685
    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startAngle:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    add-float/2addr v0, p1

    goto :goto_1

    :cond_5
    move v0, p1

    .line 1689
    :goto_1
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getAngle()F

    move-result v2

    add-float/2addr v2, v0

    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startAngle:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setAngle(F)V

    .line 1690
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startAngle:F

    .line 1691
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    :cond_6
    return-void
.end method

.method private setZoomMatrix2(Landroid/view/MotionEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 1701
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 1703
    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    div-float v2, v0, v2

    .line 1704
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    .line 1705
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1707
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    .line 1709
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aput v5, v3, v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    const/4 v6, 0x1

    aput v5, v3, v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    aput v5, v3, v1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/4 v5, 0x3

    aput p1, v3, v5

    .line 1710
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 1711
    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v7}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v8}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget-object v10, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v10}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    invoke-virtual {p1, v7, v8, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1712
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1714
    aget p1, v3, v4

    aget v1, v3, v1

    add-float/2addr p1, v1

    div-float/2addr p1, v9

    .line 1715
    aget v1, v3, v6

    aget v3, v3, v5

    add-float/2addr v1, v3

    div-float/2addr v1, v9

    .line 1716
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->checkMaxScale(F[FFF)F

    .line 1717
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
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

    .line 1180
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/view/GestureDetector;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 1181
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eqz p1, :cond_17

    if-eq p1, v0, :cond_e

    const/4 v8, 0x6

    if-eq p1, v5, :cond_6

    if-eq p1, v7, :cond_e

    if-eq p1, v4, :cond_1

    goto/16 :goto_a

    .line 1339
    :cond_1
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    if-ne v7, p1, :cond_3

    .line 1343
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->appendHistory()V

    .line 1345
    :cond_3
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne v4, p1, :cond_5

    .line 1346
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object p1

    iget-wide v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-eqz p1, :cond_4

    .line 1348
    iput v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    goto :goto_0

    :cond_4
    const-string p1, "TextZoom"

    const-string v1, "can not zoom that for emojis exist."

    .line 1350
    invoke-static {p1, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1354
    :cond_5
    iput v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 1357
    :goto_0
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mStartDis:F

    .line 1358
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->conAngle(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startAngle:F

    goto/16 :goto_a

    .line 1304
    :cond_6
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne p1, v5, :cond_7

    .line 1306
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->setZoomMatrix2(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    :cond_7
    if-ne p1, v0, :cond_8

    .line 1310
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->setDragMatrix(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    :cond_8
    if-ne v7, p1, :cond_9

    .line 1314
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->doDraw(Landroid/view/MotionEvent;)Z

    goto/16 :goto_a

    :cond_9
    if-ne v4, p1, :cond_c

    .line 1320
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    .line 1321
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1322
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1323
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1324
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    .line 1325
    iget-wide v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_a

    const/4 v1, 0x1

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setIschacked(Z)V

    goto :goto_1

    .line 1327
    :cond_b
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->setTextDragMatrix2(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    :cond_c
    if-ne v8, p1, :cond_d

    .line 1329
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->setTextZoom2(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    :cond_d
    if-ne v1, p1, :cond_22

    .line 1333
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->setCropPoints(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 1264
    :cond_e
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 1265
    iget-wide p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->time_down:J

    sub-long/2addr p1, v4

    const-wide/16 v4, 0x64

    cmp-long v1, p1, v4

    if-gez v1, :cond_12

    .line 1266
    iget-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->haveChacked:Z

    if-nez p1, :cond_11

    .line 1267
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    .line 1268
    :goto_3
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1269
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1270
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1271
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    .line 1272
    iget-wide v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_f

    const/4 p2, 0x1

    goto :goto_4

    :cond_f
    const/4 p2, 0x0

    :goto_4
    invoke-virtual {p1, p2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setIschacked(Z)V

    goto :goto_3

    .line 1274
    :cond_10
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->haveChacked:Z

    goto :goto_5

    .line 1276
    :cond_11
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->editText()V

    goto :goto_5

    .line 1278
    :cond_12
    iget-wide p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_13

    .line 1279
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->haveChacked:Z

    .line 1282
    :cond_13
    :goto_5
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne v7, p1, :cond_14

    .line 1283
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->appendHistory()V

    .line 1286
    :cond_14
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->resetText()V

    .line 1287
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->reSetMatrix()V

    .line 1288
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    goto/16 :goto_a

    .line 1291
    :cond_15
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne p1, v5, :cond_16

    .line 1292
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->reSetMatrix()V

    .line 1294
    :cond_16
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)V

    goto/16 :goto_a

    .line 1183
    :cond_17
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1184
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1185
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$502(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;I)I

    goto :goto_6

    .line 1187
    :cond_18
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->getCropFrame(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$502(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;I)I

    .line 1189
    :goto_6
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result p1

    if-gez p1, :cond_19

    .line 1191
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    goto/16 :goto_9

    .line 1195
    :cond_19
    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    goto/16 :goto_9

    .line 1198
    :cond_1a
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto/16 :goto_8

    .line 1209
    :cond_1b
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    .line 1210
    :cond_1c
    :goto_7
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1211
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1212
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1213
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    .line 1214
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->isIschacked()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->isTextDeleteValidForTextPaint2(Landroid/view/MotionEvent;Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1215
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->recycle()V

    .line 1216
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->entries:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 1218
    :cond_1d
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->isTextPointValidForTextPaint2(Landroid/view/MotionEvent;Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1219
    iput-wide v8, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->time_down:J

    .line 1221
    iput v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 1222
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startTextX:F

    .line 1223
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startTextY:F

    .line 1225
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->isIschacked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->haveChacked:Z

    goto :goto_9

    .line 1228
    :cond_1e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->isTextPointValidForTextPaint2(Landroid/view/MotionEvent;Ljava/lang/Long;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1230
    iput-wide v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->curID:J

    .line 1231
    invoke-virtual {p1, v6}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setIschacked(Z)V

    .line 1232
    iput-boolean v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->haveChacked:Z

    .line 1233
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    .line 1234
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-boolean p1, p1, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mPaintEnable:Z

    if-eqz p1, :cond_1c

    .line 1235
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->isPointValidForPaint(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1237
    iput v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    goto/16 :goto_7

    .line 1199
    :cond_1f
    :goto_8
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->isPointValidForPaint(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 1200
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    iget-boolean p1, p1, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mPaintEnable:Z

    if-eqz p1, :cond_20

    .line 1202
    iput v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    goto :goto_9

    .line 1205
    :cond_20
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    :cond_21
    :goto_9
    new-array p1, v5, [F

    .line 1249
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, p1, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, p1, v0

    .line 1250
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1251
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {v2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v3}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-virtual {v5}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1252
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1253
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->startPoint:Landroid/graphics/PointF;

    aget v2, p1, v6

    aget p1, p1, v0

    invoke-virtual {v1, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 1255
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->isMatrixEnable()V

    .line 1257
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-ne v7, p1, :cond_22

    .line 1259
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->pathMoveTo(Landroid/view/MotionEvent;)V

    .line 1363
    :cond_22
    :goto_a
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->mMode:I

    if-eq v7, p1, :cond_23

    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 1364
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1365
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;->this$0:Lcom/netease/ntunisdk/piclib/view/MatrixImageView;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->callback(Z)V

    :cond_23
    return v0
.end method
