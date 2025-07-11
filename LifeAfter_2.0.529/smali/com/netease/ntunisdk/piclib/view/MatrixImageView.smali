.class public Lcom/netease/ntunisdk/piclib/view/MatrixImageView;
.super Landroid/widget/ImageView;
.source "MatrixImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;,
        Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;
    }
.end annotation


# static fields
.field private static COLOR_DEFAULT:I = -0x1

.field private static final CROP_MODE_DISTANCE_LIMIT:F = 48.0f

.field private static final CROP_POINTS_DISTANCE_LIMIT:F = 400.0f

.field private static final DRAW:I = 0x1

.field private static final MOSAIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MatrixImageView"

.field private static marginLeftLimit:F = 20.0f

.field private static marginTopLimit:F = 20.0f


# instance fields
.field private builder:Landroid/text/StaticLayout$Builder;

.field private cacheForMatrixValues:[F

.field private cropAngle:I

.field private cropFinishAngle:I

.field private cropPointIndex:I

.field private detector:Landroid/view/GestureDetector;

.field private drawPaint:Landroid/graphics/Paint;

.field private history:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field private isCroping:Z

.field private isEdited:Z

.field private leftBottom:Landroid/graphics/PointF;

.field private leftBottomForFinish:Landroid/graphics/PointF;

.field private leftBottomForReal:Landroid/graphics/PointF;

.field leftBottomX:F

.field leftBottomY:F

.field private leftTop:Landroid/graphics/PointF;

.field private leftTopForFinish:Landroid/graphics/PointF;

.field private leftTopForReal:Landroid/graphics/PointF;

.field leftTopX:F

.field leftTopY:F

.field private lengthPanel:F

.field private mCallback:Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

.field private mCropCurrentMatrix:Landroid/graphics/Matrix;

.field private mCropImageHeight:F

.field private mCropImageWidth:F

.field private mCropMatrix:Landroid/graphics/Matrix;

.field private mCropMatrix_Rotate:Landroid/graphics/Matrix;

.field private mDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mImageHeight:F

.field private mImageMatrix:Landroid/graphics/Matrix;

.field private mImageWidth:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMosaicBitmap:Landroid/graphics/Bitmap;

.field public mPaintEnable:Z

.field private mValid:Z

.field private mosaicHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation
.end field

.field private mosaicPaint:Landroid/graphics/Paint;

.field private outAreaPaint:Landroid/graphics/Paint;

.field private outCropAreaPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

.field private resetMatrix:Landroid/graphics/Matrix;

.field private rightBottom:Landroid/graphics/PointF;

.field private rightBottomForFinish:Landroid/graphics/PointF;

.field private rightBottomForReal:Landroid/graphics/PointF;

.field rightBottomX:F

.field rightBottomY:F

.field private rightTop:Landroid/graphics/PointF;

.field private rightTopForFinish:Landroid/graphics/PointF;

.field private rightTopForReal:Landroid/graphics/PointF;

.field rightTopX:F

.field rightTopY:F

.field private stableCropBox:Z

.field private state:I

.field private staticLayout:Landroid/text/StaticLayout;

.field private textCancelPaint:Landroid/graphics/Paint;

.field private textCancelSize:F

.field private textFramePaint:Landroid/graphics/Paint;

.field private textPaint:Landroid/text/TextPaint;

.field private textSize:F

.field private textUnitMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;"
        }
    .end annotation
.end field

.field private text_max_width:F

.field private thinDrawPaint:Landroid/graphics/Paint;

.field private wideDrawPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 133
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    const/high16 p1, 0x42700000    # 60.0f

    .line 60
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 62
    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    .line 64
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    const p1, 0x44bf4000    # 1530.0f

    .line 79
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mPaintEnable:Z

    .line 88
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 92
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropPointIndex:I

    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix_Rotate:Landroid/graphics/Matrix;

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    .line 114
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 115
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    .line 134
    sget p1, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->COLOR_DEFAULT:I

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setupPaint(I)V

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

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    const/high16 p1, 0x42700000    # 60.0f

    .line 60
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 62
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    .line 64
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    const p1, 0x44bf4000    # 1530.0f

    .line 79
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mPaintEnable:Z

    .line 88
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 92
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    const/4 p2, 0x0

    .line 99
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    const/4 p2, -0x1

    .line 100
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropPointIndex:I

    .line 106
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix_Rotate:Landroid/graphics/Matrix;

    .line 108
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    .line 114
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 115
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    .line 141
    sget p1, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->COLOR_DEFAULT:I

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setupPaint(I)V

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

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    const/high16 p1, 0x42700000    # 60.0f

    .line 60
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 62
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    .line 64
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    const p1, 0x44bf4000    # 1530.0f

    .line 79
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mPaintEnable:Z

    .line 88
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 92
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    const/4 p2, 0x0

    .line 99
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    const/4 p2, -0x1

    .line 100
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropPointIndex:I

    .line 106
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix_Rotate:Landroid/graphics/Matrix;

    .line 108
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    .line 114
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 115
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    .line 147
    sget p1, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->COLOR_DEFAULT:I

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setupPaint(I)V

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

    .line 153
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    const/high16 p1, 0x42700000    # 60.0f

    .line 60
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 62
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    .line 64
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 78
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    const p1, 0x44bf4000    # 1530.0f

    .line 79
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mPaintEnable:Z

    .line 88
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 92
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    const/4 p2, 0x0

    .line 99
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    const/4 p2, -0x1

    .line 100
    iput p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropPointIndex:I

    .line 106
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix_Rotate:Landroid/graphics/Matrix;

    .line 108
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    .line 114
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 115
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    .line 154
    sget p1, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->COLOR_DEFAULT:I

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setupPaint(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroidx/collection/ArrayMap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    return p0
.end method

.method static synthetic access$1100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    return p0
.end method

.method static synthetic access$1200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/PointF;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/view/GestureDetector;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->detector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageWidth:F

    return p0
.end method

.method static synthetic access$2100(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageHeight:F

    return p0
.end method

.method static synthetic access$2200(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)F
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    return p0
.end method

.method static synthetic access$2300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->state:I

    return p0
.end method

.method static synthetic access$2400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Paint;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Path;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Landroid/graphics/Matrix;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix_Rotate:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Ljava/util/Stack;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Ljava/util/Stack;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCroping:Z

    return p0
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->stableCropBox:Z

    return p0
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropPointIndex:I

    return p0
.end method

.method static synthetic access$502(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropPointIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    return p0
.end method

.method static synthetic access$700(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropCenter()V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCallback:Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)[F
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    return-object p0
.end method

.method private construct()V
    .locals 1

    .line 376
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->makeMosaicBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    .line 377
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$MatrixTouchListener;-><init>(Lcom/netease/ntunisdk/piclib/view/MatrixImageView;)V

    .line 378
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private cropCenter()V
    .locals 16

    move-object/from16 v0, p0

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginLeftLimit:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    div-float/2addr v1, v2

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginTopLimit:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    div-float/2addr v2, v4

    .line 1103
    iget v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    const/16 v5, -0x5a

    if-eq v4, v5, :cond_0

    const/16 v5, -0x10e

    if-ne v4, v5, :cond_1

    .line 1104
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginTopLimit:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    div-float/2addr v1, v2

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v4, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginLeftLimit:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    div-float/2addr v2, v3

    :cond_1
    const/16 v3, 0x8

    new-array v3, v3, [F

    .line 1109
    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x1

    aput v4, v3, v6

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x2

    aput v4, v3, v7

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v8, 0x3

    aput v4, v3, v8

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v9, 0x4

    aput v4, v3, v9

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v10, 0x5

    aput v4, v3, v10

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v11, 0x6

    aput v4, v3, v11

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v12, 0x7

    aput v4, v3, v12

    .line 1113
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1115
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v13

    div-int/2addr v13, v7

    iget-object v14, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    iget-object v15, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->x:F

    add-float/2addr v14, v15

    float-to-int v14, v14

    div-int/2addr v14, v7

    sub-int/2addr v13, v14

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v14

    div-int/2addr v14, v7

    iget-object v15, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v12

    float-to-int v12, v15

    div-int/2addr v12, v7

    sub-int/2addr v14, v12

    int-to-float v12, v13

    int-to-float v13, v14

    .line 1119
    invoke-virtual {v4, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1120
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    shr-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v13

    shr-int/2addr v13, v6

    int-to-float v13, v13

    invoke-virtual {v4, v12, v1, v2, v13}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1121
    invoke-virtual {v0, v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1123
    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1124
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v2, v3, v5

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1125
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v2, v3, v6

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1126
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v3, v7

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1127
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v3, v8

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1128
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v3, v9

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1129
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v3, v10

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1130
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v2, v3, v11

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 1131
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    const/4 v2, 0x7

    aget v2, v3, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method private drawCropFrame(Landroid/graphics/Canvas;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 918
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 919
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    const/4 v2, 0x2

    aget v2, v1, v2

    .line 920
    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    const/4 v4, 0x0

    aget v4, v1, v4

    mul-float v9, v3, v4

    const/4 v3, 0x5

    .line 921
    aget v10, v1, v3

    .line 922
    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    const/4 v4, 0x4

    aget v1, v1, v4

    mul-float v1, v1, v3

    .line 924
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 931
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v2

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 933
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v10

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v9, v2

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v8, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 935
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 937
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v12

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v14

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v15

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 940
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 941
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v1

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 944
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v1, v4

    .line 945
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    div-float v4, v5, v4

    .line 946
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float v6, v5, v1

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float v8, v5, v1

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 947
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float v6, v1, v2

    add-float v7, v5, v6

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->y:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float v9, v5, v6

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v10, v5, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v12

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 948
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float v7, v5, v4

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float v9, v5, v4

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 949
    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v7, v5, v4

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v9, v5, v4

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 952
    iget v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 953
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    iput v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    .line 955
    :cond_0
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v2

    .line 957
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v6, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v7, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    add-float v8, v2, v3

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v9, v2, v1

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 958
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v6, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v7, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v8, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    add-float v9, v2, v3

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 960
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    sub-float v6, v2, v3

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v7, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v8, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v9, v2, v1

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 961
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v6, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float v7, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v8, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    add-float v9, v2, v3

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 963
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v6, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    sub-float v7, v2, v3

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v8, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v9, v2, v1

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 964
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    add-float v6, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v7, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    add-float v8, v2, v3

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v9, v2, v1

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 966
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    sub-float v6, v2, v3

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v7, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v8, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v9, v2, v1

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 967
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v6, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->lengthPanel:F

    sub-float v7, v2, v3

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v8, v2, v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v9, v2, v1

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawOthers(Landroid/graphics/Canvas;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 973
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    if-nez v1, :cond_0

    return-void

    .line 974
    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 975
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v1

    .line 976
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;

    .line 977
    new-instance v4, Landroid/graphics/Path;

    iget-object v5, v3, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->path:Landroid/graphics/Path;

    invoke-direct {v4, v5}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 978
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 979
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    .line 980
    new-instance v5, Landroid/graphics/Paint;

    iget-object v3, v3, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->paint:Landroid/graphics/Paint;

    invoke-direct {v5, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 981
    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v7, v6, v12

    aget v6, v6, v10

    add-float/2addr v7, v6

    mul-float v3, v3, v7

    div-float/2addr v3, v11

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 983
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 985
    :cond_1
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 986
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 987
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 988
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 989
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 990
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 992
    :cond_2
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;

    .line 993
    new-instance v3, Landroid/graphics/Path;

    iget-object v4, v2, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->path:Landroid/graphics/Path;

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 996
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 997
    new-instance v4, Landroid/graphics/Paint;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->paint:Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 998
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v6, v5, v12

    aget v5, v5, v10

    add-float/2addr v6, v5

    mul-float v2, v2, v6

    div-float/2addr v2, v11

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1000
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1003
    :cond_3
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    const/4 v7, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1004
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1005
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-eqz v14, :cond_4

    .line 1006
    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1007
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1008
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1010
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v3, v3, v12

    mul-float v2, v2, v3

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1012
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_5

    .line 1013
    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v5, v5, v12

    mul-float v4, v4, v5

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v1, v12, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->builder:Landroid/text/StaticLayout$Builder;

    .line 1014
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    goto :goto_3

    .line 1016
    :cond_5
    new-instance v1, Landroid/text/StaticLayout;

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v4, v4, v12

    mul-float v3, v3, v4

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    sget-object v19, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object v15, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    invoke-direct/range {v15 .. v22}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    .line 1018
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    new-array v2, v7, [F

    .line 1021
    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v3

    aput v3, v2, v12

    .line 1022
    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result v3

    aput v3, v2, v10

    .line 1023
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1025
    aget v1, v2, v12

    aget v2, v2, v10

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1026
    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getAngle()F

    move-result v1

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    div-float/2addr v2, v11

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v11

    invoke-virtual {v8, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1028
    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->containsEmoji()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1029
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 1031
    :cond_6
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v1, v1, v12

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {v14, v8, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->drawAsBitmap(Landroid/graphics/Canvas;F)V

    .line 1034
    :goto_4
    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->isIschacked()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCroping:Z

    if-nez v1, :cond_7

    .line 1036
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1037
    iget v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    const/high16 v15, 0x40800000    # 4.0f

    div-float v2, v1, v15

    const/16 v16, 0x0

    sub-float v2, v16, v2

    div-float v3, v1, v15

    sub-float v3, v16, v3

    div-float/2addr v1, v15

    add-float v1, v1, v16

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    add-float/2addr v4, v1

    iget v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    div-float/2addr v1, v15

    add-float v1, v1, v16

    iget-object v5, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1039
    iget v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    div-float/2addr v1, v15

    add-float v1, v1, v16

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    const/high16 v3, 0x3fc00000    # 1.5f

    div-float v4, v2, v3

    sub-float v17, v1, v4

    div-float v1, v2, v15

    sub-float v1, v16, v1

    div-float v4, v2, v3

    sub-float v18, v1, v4

    div-float/2addr v2, v15

    add-float v2, v2, v16

    .line 1041
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v2, v1

    iget v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    div-float v4, v1, v3

    add-float v19, v2, v4

    div-float v2, v1, v15

    sub-float v16, v16, v2

    div-float/2addr v1, v3

    add-float v15, v16, v1

    .line 1043
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move v5, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1045
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1046
    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1047
    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    move/from16 v2, v19

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1050
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1051
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    invoke-virtual {v14, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setW(F)V

    .line 1052
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setH(F)V

    goto/16 :goto_2

    .line 1057
    :cond_8
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->state:I

    if-ne v1, v7, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1058
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v1

    .line 1059
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1060
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1061
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1062
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 1063
    iget-object v3, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1064
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1065
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1067
    :cond_9
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->state:I

    if-ne v1, v10, :cond_a

    .line 1068
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    return-void
.end method

.method private makeMosaicBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 475
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 480
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 483
    :cond_1
    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    .line 484
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 487
    :cond_2
    :goto_0
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    const/high16 v2, 0x42800000    # 64.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 488
    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 489
    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    float-to-int v4, v4

    .line 490
    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    float-to-int v5, v5

    if-eqz v1, :cond_3

    .line 494
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    invoke-static {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    .line 498
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private setupPaint(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 217
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float v3, v1, v2

    .line 218
    sput v3, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginLeftLimit:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v1, v1, v3

    .line 219
    sput v1, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginTopLimit:F

    .line 221
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    .line 222
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 224
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 226
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 227
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 229
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 230
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 233
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 235
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textFramePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 237
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    .line 238
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 240
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 242
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 243
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 245
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    .line 247
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 249
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    .line 250
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 252
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 254
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 255
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 257
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    .line 263
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 265
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 266
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 267
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 268
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->thinDrawPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 270
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    .line 271
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 273
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 274
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 276
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->wideDrawPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 278
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outAreaPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x60000000

    .line 279
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outAreaPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outCropAreaPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    .line 284
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outAreaPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setupText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tu"
        }
    .end annotation

    .line 414
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setAngle(F)V

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p1, v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setIschacked(Z)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 416
    invoke-virtual {p1, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextScale(F)V

    .line 418
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 419
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 420
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 422
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 425
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 426
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    aget v4, v1, v0

    mul-float v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text_max_width"

    invoke-static {v3, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 429
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    aget v7, v1, v0

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-static {v2, v0, v4, v5, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->builder:Landroid/text/StaticLayout$Builder;

    .line 431
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    goto :goto_0

    .line 433
    :cond_0
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    aget v7, v1, v0

    mul-float v4, v4, v7

    float-to-int v7, v4

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    .line 437
    :goto_0
    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageWidth:F

    aget v4, v1, v0

    mul-float v2, v2, v4

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    div-float/2addr v2, v4

    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageHeight:F

    const/4 v5, 0x4

    aget v5, v1, v5

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_2

    .line 439
    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextScale(F)V

    .line 440
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    aget v5, v1, v0

    mul-float v4, v4, v5

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v5

    mul-float v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 441
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_1

    .line 442
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    aget v6, v1, v0

    mul-float v5, v5, v6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v2, v0, v3, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->builder:Landroid/text/StaticLayout$Builder;

    .line 444
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    goto :goto_1

    .line 446
    :cond_1
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    aget v6, v1, v0

    mul-float v3, v3, v6

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v6

    mul-float v3, v3, v6

    float-to-int v6, v3

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    .line 451
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 452
    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextMaxScale(F)V

    .line 454
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 455
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 457
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    shr-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v5

    .line 458
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v4

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v4, v6

    shr-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v3, v0

    .line 459
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 460
    aget v2, v3, v0

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextX(F)V

    .line 461
    aget v2, v3, v5

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setTextY(F)V

    .line 463
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setW(F)V

    .line 464
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setH(F)V

    .line 466
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    aget v0, v1, v0

    mul-float v3, v3, v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v0

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-virtual {p1, v2, v0}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->update(Landroid/text/TextPaint;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tu"
        }
    .end annotation

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setupText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V

    .line 403
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 407
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 408
    :goto_1
    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->setIschacked(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public adjustCropLocation()V
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 644
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    div-float v2, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sub-float/2addr v3, v2

    .line 649
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 650
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 651
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 652
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_0

    :cond_0
    sub-float/2addr v2, v3

    .line 655
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 656
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 657
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 658
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-void
.end method

.method public doMatrix()V
    .locals 11

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    .line 292
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 293
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 294
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setmImageMatrix(Landroid/graphics/Matrix;)V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 296
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 297
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    aget v5, v1, v4

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    aget v7, v1, v5

    div-float/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setOriImageWidth(F)V

    .line 298
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v7, 0x5

    aget v8, v1, v7

    mul-float v8, v8, v6

    sub-float/2addr v3, v8

    const/4 v8, 0x4

    aget v1, v1, v8

    div-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setOriImageHeight(F)V

    .line 300
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getOriImageWidth()F

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    .line 301
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getOriImageHeight()F

    move-result v1

    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    .line 302
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 306
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix:Landroid/graphics/Matrix;

    .line 307
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 310
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginLeftLimit:F

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 311
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginTopLimit:F

    mul-float v3, v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 312
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    shr-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v10

    shr-int/2addr v10, v0

    int-to-float v10, v10

    invoke-virtual {v3, v9, v1, v2, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 313
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setmCropMatrix(Landroid/graphics/Matrix;)V

    .line 315
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    .line 316
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 318
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginLeftLimit:F

    mul-float v2, v2, v6

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 319
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginTopLimit:F

    mul-float v3, v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 320
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    shr-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v9

    shr-int/2addr v9, v0

    int-to-float v9, v9

    invoke-virtual {v3, v6, v1, v2, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 322
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setmCropResetMatrix(Landroid/graphics/Matrix;)V

    .line 325
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    .line 326
    new-instance v1, Landroid/graphics/PointF;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    .line 327
    new-instance v1, Landroid/graphics/PointF;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    .line 328
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    .line 329
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setLeftBottomForFinish(Landroid/graphics/PointF;)V

    .line 330
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setLeftTopForFinish(Landroid/graphics/PointF;)V

    .line 331
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setRightTopForFinish(Landroid/graphics/PointF;)V

    .line 332
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setRightBottomForFinish(Landroid/graphics/PointF;)V

    .line 333
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    .line 334
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    .line 335
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    .line 336
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    .line 339
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 340
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 343
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 345
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix_Rotate:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 347
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v3, v2, v4

    aget v2, v2, v7

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    .line 348
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v6, v3, v4

    sub-float/2addr v2, v6

    aget v3, v3, v7

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    .line 349
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v2, v2, v4

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v6, v6, v7

    sub-float/2addr v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    .line 350
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v3, v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v6, v6, v7

    sub-float/2addr v3, v6

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 352
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v1, v0

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    aput v2, v1, v8

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v1, v7

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x6

    aput v2, v1, v6

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x7

    aput v2, v1, v9

    .line 356
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 357
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v5, v1, v5

    iput v5, v2, Landroid/graphics/PointF;->x:F

    .line 358
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v0, v1, v0

    iput v0, v2, Landroid/graphics/PointF;->y:F

    .line 359
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v1, v4

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 360
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v1, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 361
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v1, v8

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 362
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v1, v7

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 363
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v2, v1, v6

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 364
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v1, v1, v9

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 366
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageWidth:F

    .line 367
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageHeight:F

    .line 368
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 370
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->construct()V

    .line 372
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    return-void
.end method

.method drawOnNormalRatio(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1074
    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 1075
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;

    .line 1076
    iget-object v3, v2, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1077
    iget-object v3, v2, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->path:Landroid/graphics/Path;

    iget-object v2, v2, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1081
    :cond_1
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1082
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1084
    :cond_2
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1085
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1086
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1087
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1088
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1089
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;

    .line 1090
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1091
    iget-object v2, v1, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->path:Landroid/graphics/Path;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1094
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1095
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public drawTextOnNormalRatio(Landroid/graphics/Canvas;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 504
    invoke-virtual {p0, p1, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawTextOnNormalRatio(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public drawTextOnNormalRatio(Landroid/graphics/Canvas;F)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "canvas",
            "scale"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 509
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/ntunisdk/piclib/unit/TextUnit;

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 512
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textSize:F

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v4

    mul-float v3, v3, v4

    mul-float v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 514
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v2, v3, :cond_1

    .line 515
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v7

    mul-float v6, v6, v7

    mul-float v6, v6, p2

    float-to-int v6, v6

    invoke-static {v2, v4, v3, v5, v6}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->builder:Landroid/text/StaticLayout$Builder;

    .line 516
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    goto :goto_1

    .line 518
    :cond_1
    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getText()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->text_max_width:F

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v5

    mul-float v3, v3, v5

    mul-float v3, v3, p2

    float-to-int v8, v3

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    .line 520
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 522
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextX()F

    move-result v3

    aput v3, v2, v4

    .line 523
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextY()F

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 524
    aget v3, v2, v4

    aget v2, v2, v5

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 525
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getAngle()F

    move-result v2

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {p1, v2, v3, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 527
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->containsEmoji()Z

    move-result v2

    if-nez v2, :cond_2

    .line 528
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->staticLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 530
    :cond_2
    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->getTextScale()F

    move-result v2

    mul-float v2, v2, p2

    invoke-virtual {v1, p1, v2}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->drawAsBitmap(Landroid/graphics/Canvas;F)V

    .line 533
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public enablePaint(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 382
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mPaintEnable:Z

    return-void
.end method

.method public getEditPic()Landroid/graphics/Bitmap;
    .locals 12

    .line 763
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 764
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 765
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 766
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 767
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 768
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 769
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 770
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 771
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 772
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 775
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 777
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 778
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 780
    :cond_0
    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 785
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_3

    return-object v3

    .line 792
    :cond_3
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 793
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 794
    :cond_4
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawOnNormalRatio(Landroid/graphics/Canvas;)V

    .line 795
    iput-boolean v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 797
    :cond_5
    iget-object v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 798
    invoke-virtual {p0, v4}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawTextOnNormalRatio(Landroid/graphics/Canvas;)V

    .line 799
    iput-boolean v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 801
    :cond_6
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 803
    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    int-to-float v4, v4

    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    div-float/2addr v7, v6

    invoke-virtual {v9, v4, v5, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 804
    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    if-eqz v4, :cond_7

    .line 805
    iput-boolean v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 807
    :cond_7
    iget-boolean v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    .line 808
    iput-boolean v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    return-object v3

    .line 811
    :cond_8
    iput-boolean v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isEdited:Z

    .line 812
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    new-instance v2, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setTimeStamp(Lcom/bumptech/glide/signature/ObjectKey;)V

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v5, v1

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v6, v1

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    float-to-int v7, v1

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForFinish:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForFinish:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    float-to-int v8, v1

    const/4 v10, 0x1

    move-object v4, v0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 817
    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    .line 820
    :goto_2
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :goto_3
    return-object v1
.end method

.method public getHistory()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    return-object v0
.end method

.method public getMosaicHistory()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->state:I

    return v0
.end method

.method public getTextUnitMap()Landroidx/collection/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    return-object v0
.end method

.method public isCropping()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCroping:Z

    return v0
.end method

.method public isHistoryEmpty()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public isMosaicHistory()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    return v0
.end method

.method public mosaicUndo()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 541
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    .line 542
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCallback:Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 543
    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->setUndoEnable(Z)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 874
    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    if-nez v1, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 876
    iget v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 877
    iget-boolean v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCroping:Z

    if-eqz v1, :cond_1

    .line 878
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 879
    invoke-direct/range {p0 .. p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawOthers(Landroid/graphics/Canvas;)V

    .line 880
    invoke-direct/range {p0 .. p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawCropFrame(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 882
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 883
    invoke-direct/range {p0 .. p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->drawOthers(Landroid/graphics/Canvas;)V

    .line 884
    iget-boolean v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getmImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 885
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 887
    :cond_2
    iget-boolean v1, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mValid:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 888
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    aput v2, v1, v4

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v11, 0x1

    aput v2, v1, v11

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v6, 0x3

    aput v2, v1, v6

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x4

    aput v2, v1, v12

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v13, 0x5

    aput v2, v1, v13

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v14, 0x6

    aput v2, v1, v14

    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    const/4 v15, 0x7

    aput v2, v1, v15

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v7, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 896
    iget-object v2, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v10, v2, v5

    .line 897
    iget v7, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    aget v8, v2, v4

    mul-float v16, v7, v8

    .line 898
    aget v9, v2, v13

    .line 899
    iget v7, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    aget v2, v2, v12

    mul-float v2, v2, v7

    const/4 v8, 0x0

    .line 901
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v7, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v15, v8

    aget v15, v1, v5

    aget v17, v1, v6

    iget-object v6, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outCropAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move-object/from16 v18, v6

    move v6, v7

    move v7, v8

    const/4 v14, 0x0

    move v8, v15

    move v15, v9

    move/from16 v9, v17

    move v11, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 903
    aget v6, v1, v12

    aget v7, v1, v13

    add-float v12, v11, v16

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v12, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v15

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outCropAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 905
    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float v7, v2, v5

    aget v8, v1, v4

    const/4 v2, 0x1

    aget v9, v1, v2

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outCropAreaPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v6, v2, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v7, v2, v4

    const/4 v2, 0x6

    aget v8, v1, v2

    const/4 v2, 0x7

    aget v9, v1, v2

    iget-object v10, v0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->outCropAreaPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 912
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public releaseOnDestroy()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMosaicBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public resetCrop()V
    .locals 11

    .line 663
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCroping:Z

    if-nez v0, :cond_0

    return-void

    .line 664
    :cond_0
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->stableCropBox:Z

    if-eqz v0, :cond_1

    .line 665
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 667
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 668
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 669
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 671
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopX:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 672
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopY:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 673
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopX:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 674
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopY:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 675
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomX:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 676
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomY:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 677
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomX:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 678
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomY:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 680
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->adjustCropLocation()V

    .line 682
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropCenter()V

    .line 683
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 687
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 689
    iget v4, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageWidth:F

    const/4 v5, 0x2

    aput v4, v0, v5

    const/4 v6, 0x3

    aput v2, v0, v6

    const/4 v7, 0x4

    aput v2, v0, v7

    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mImageHeight:F

    const/4 v8, 0x5

    aput v2, v0, v8

    const/4 v9, 0x6

    aput v4, v0, v9

    const/4 v4, 0x7

    aput v2, v0, v4

    .line 693
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->resetMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 694
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v10, v0, v1

    iput v10, v2, Landroid/graphics/PointF;->x:F

    .line 695
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v3, v0, v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 696
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v3, v0, v5

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 697
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v3, v0, v6

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 698
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v3, v0, v7

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 699
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v3, v0, v8

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 700
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v3, v0, v9

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 701
    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v0, v0, v4

    iput v0, v2, Landroid/graphics/PointF;->y:F

    .line 702
    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 703
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    return-void
.end method

.method public rotateCrop()V
    .locals 15

    .line 709
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    add-int/lit8 v0, v0, -0x5a

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 710
    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 712
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x3

    aput v1, v0, v5

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x4

    aput v1, v0, v6

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x5

    aput v1, v0, v7

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x6

    aput v1, v0, v8

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x7

    aput v1, v0, v9

    .line 717
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 718
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 719
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 720
    aget v10, v0, v4

    aget v11, v0, v2

    sub-float/2addr v10, v11

    .line 721
    aget v11, v0, v7

    aget v12, v0, v3

    sub-float/2addr v11, v12

    .line 722
    iget-object v12, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 725
    iget v12, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    const/high16 v13, 0x40000000    # 2.0f

    const/16 v14, -0x5a

    if-eq v12, v14, :cond_1

    const/16 v14, -0x10e

    if-ne v12, v14, :cond_0

    goto :goto_0

    .line 732
    :cond_0
    iget-object v12, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 734
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sget v14, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginLeftLimit:F

    mul-float v14, v14, v13

    sub-float/2addr v12, v14

    iget-object v14, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v14, v14, v6

    mul-float v10, v10, v14

    div-float/2addr v12, v10

    .line 735
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sget v14, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginTopLimit:F

    mul-float v14, v14, v13

    sub-float/2addr v10, v14

    iget-object v14, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v14, v14, v2

    mul-float v11, v11, v14

    div-float/2addr v10, v11

    .line 736
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-virtual {v1, v11, v10, v12, v14}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1

    .line 726
    :cond_1
    :goto_0
    iget-object v12, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    invoke-virtual {v1, v12}, Landroid/graphics/Matrix;->getValues([F)V

    .line 728
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    sget v14, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginLeftLimit:F

    mul-float v14, v14, v13

    sub-float/2addr v12, v14

    iget-object v14, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v14, v14, v6

    mul-float v11, v11, v14

    div-float/2addr v12, v11

    .line 729
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    sget v14, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->marginTopLimit:F

    mul-float v14, v14, v13

    sub-float/2addr v11, v14

    iget-object v14, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cacheForMatrixValues:[F

    aget v14, v14, v2

    mul-float v10, v10, v14

    div-float/2addr v11, v10

    .line 730
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    invoke-virtual {v1, v10, v11, v12, v14}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 739
    :goto_1
    iget-object v10, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropMatrix_Rotate:Landroid/graphics/Matrix;

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 740
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 742
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 743
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 744
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 745
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 746
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v0, v5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 747
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v0, v6

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 748
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v0, v7

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 749
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v2, v0, v8

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 750
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v0, v0, v9

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 751
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropCenter()V

    .line 752
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setupPaint(I)V

    return-void
.end method

.method public setCropImage()V
    .locals 10

    .line 612
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 613
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x3

    aput v1, v0, v5

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x4

    aput v1, v0, v6

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x5

    aput v1, v0, v7

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x6

    aput v1, v0, v8

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x7

    aput v1, v0, v9

    .line 617
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 618
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 619
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 620
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 621
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    aget v2, v0, v5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 622
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v0, v6

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 623
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    aget v2, v0, v7

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 624
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v2, v0, v8

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 625
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    aget v0, v0, v9

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 627
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 629
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 631
    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    const/16 v3, -0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, -0x10e

    if-ne v2, v3, :cond_1

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 633
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 636
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 637
    iget-object v3, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 638
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 639
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setDrawCallback(Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cb"
        }
    .end annotation

    .line 869
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCallback:Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    return-void
.end method

.method public setHistory(Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "history"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    return-void
.end method

.method public setIsCrop(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCroping"
        }
    .end annotation

    .line 554
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->isCroping:Z

    .line 555
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p1, :cond_1

    .line 557
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 558
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 560
    iget-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->stableCropBox:Z

    if-eqz p1, :cond_2

    .line 563
    :try_start_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopX:F

    .line 564
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopY:F

    .line 565
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopX:F

    .line 566
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopY:F

    .line 567
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomX:F

    .line 568
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomY:F

    .line 569
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomX:F

    .line 570
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomY:F

    .line 572
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->adjustCropLocation()V

    .line 573
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropCenter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 575
    sget-boolean v0, Lcom/netease/ntunisdk/base/UniSdkUtils;->isDebug:Z

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsCrop -> e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MatrixImageView"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 584
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    return-void
.end method

.method public setMosaicHistory(Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mosaicHistory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/netease/ntunisdk/piclib/unit/PaintPathUnit;",
            ">;)V"
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    return-void
.end method

.method public setPicUnit(Lcom/netease/ntunisdk/piclib/unit/PicUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pU"
        }
    .end annotation

    .line 827
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    .line 828
    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getPicAngle()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    .line 829
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getPicAngle()I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    .line 834
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p1, p1, v0

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textCancelSize:F

    .line 835
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getDrawHistory()Ljava/util/Stack;

    move-result-object p1

    if-nez p1, :cond_0

    .line 836
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    .line 837
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setDrawHistory(Ljava/util/Stack;)V

    goto :goto_0

    .line 839
    :cond_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getDrawHistory()Ljava/util/Stack;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    .line 841
    :goto_0
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getMosaicHistory()Ljava/util/Stack;

    move-result-object p1

    if-nez p1, :cond_1

    .line 842
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    .line 843
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setMosaicHistory(Ljava/util/Stack;)V

    goto :goto_1

    .line 845
    :cond_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getMosaicHistory()Ljava/util/Stack;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mosaicHistory:Ljava/util/Stack;

    .line 848
    :goto_1
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getTextEditMap()Landroidx/collection/ArrayMap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 849
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    .line 850
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setTextEditMap(Landroidx/collection/ArrayMap;)V

    goto :goto_2

    .line 852
    :cond_2
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->getTextEditMap()Landroidx/collection/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    :goto_2
    return-void
.end method

.method public setRealCrop()V
    .locals 11

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 588
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTop:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x3

    aput v1, v0, v5

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v6, 0x4

    aput v1, v0, v6

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x5

    aput v1, v0, v7

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/4 v8, 0x6

    aput v1, v0, v8

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottom:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v9, 0x7

    aput v1, v0, v9

    .line 593
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 594
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 595
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 596
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 597
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    aget v2, v0, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 598
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    aget v2, v0, v4

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 599
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    aget v2, v0, v5

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 600
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    aget v2, v0, v6

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 601
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    aget v2, v0, v7

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 602
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    aget v2, v0, v8

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 603
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightBottomForReal:Landroid/graphics/PointF;

    aget v0, v0, v9

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 604
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropCurrentMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 605
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->rightTopForReal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageWidth:F

    .line 606
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftBottomForReal:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->leftTopForReal:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCropImageHeight:F

    .line 607
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropAngle:I

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->cropFinishAngle:I

    .line 608
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->picUnit:Lcom/netease/ntunisdk/piclib/unit/PicUnit;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/piclib/unit/PicUnit;->setPicAngle(I)V

    return-void
.end method

.method public setStableCropBox(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stableCropBox"
        }
    .end annotation

    .line 158
    iput-boolean p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->stableCropBox:Z

    return-void
.end method

.method public setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 186
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->state:I

    return-void
.end method

.method public setTextUnitMap(Landroidx/collection/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textUnitMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/netease/ntunisdk/piclib/unit/TextUnit;",
            ">;)V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->textUnitMap:Landroidx/collection/ArrayMap;

    return-void
.end method

.method public undo()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 388
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->postInvalidate()V

    .line 389
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->history:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/MatrixImageView;->mCallback:Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 390
    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/piclib/view/MatrixImageView$DrawingCallback;->setUndoEnable(Z)V

    :cond_0
    return-void
.end method

.method public updateText(Lcom/netease/ntunisdk/piclib/unit/TextUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tu"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 396
    invoke-virtual {p1, v0, v1}, Lcom/netease/ntunisdk/piclib/unit/TextUnit;->update(Landroid/text/TextPaint;I)V

    return-void
.end method
