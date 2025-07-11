.class public final Landroidx/camera/core/impl/utils/MatrixExt;
.super Ljava/lang/Object;
.source "MatrixExt.java"


# static fields
.field private static final sTemp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 29
    sput-object v0, Landroidx/camera/core/impl/utils/MatrixExt;->sTemp:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static denormalize([FFF)V
    .locals 2

    neg-float p1, p1

    neg-float p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, v0, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method private static normalize([FFF)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, v0, p1, p2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static postRotate([FFFF)V
    .locals 7

    .line 81
    sget-object v6, Landroidx/camera/core/impl/utils/MatrixExt;->sTemp:[F

    monitor-enter v6

    const/4 v0, 0x0

    .line 82
    :try_start_0
    invoke-static {v6, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 83
    invoke-static {v6, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->normalize([FFF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v6

    move v2, p1

    .line 84
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 85
    invoke-static {v6, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->denormalize([FFF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v6

    move-object v4, p0

    .line 86
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 87
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static preRotate([FFFF)V
    .locals 6

    .line 64
    invoke-static {p0, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->normalize([FFF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    .line 65
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 66
    invoke-static {p0, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->denormalize([FFF)V

    return-void
.end method

.method public static preVerticalFlip([FF)V
    .locals 4

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0, p1}, Landroidx/camera/core/impl/utils/MatrixExt;->normalize([FFF)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 98
    invoke-static {p0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 99
    invoke-static {p0, v0, p1}, Landroidx/camera/core/impl/utils/MatrixExt;->denormalize([FFF)V

    return-void
.end method

.method public static setRotate([FFFF)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 49
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/MatrixExt;->preRotate([FFFF)V

    return-void
.end method

.method public static toString([FI)Ljava/lang/String;
    .locals 4

    .line 112
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    aget v2, p0, p1

    .line 117
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x4

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x8

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0xc

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    .line 118
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x9

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0xd

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    .line 119
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x6

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0xa

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0xe

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x3

    aget v2, p0, v2

    .line 120
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0x7

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    add-int/lit8 v2, p1, 0xb

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const/16 v2, 0xf

    add-int/2addr p1, v2

    aget p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Matrix:\n%2.1f %2.1f %2.1f %2.1f\n%2.1f %2.1f %2.1f %2.1f\n%2.1f %2.1f %2.1f %2.1f\n%2.1f %2.1f %2.1f %2.1f"

    .line 112
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
