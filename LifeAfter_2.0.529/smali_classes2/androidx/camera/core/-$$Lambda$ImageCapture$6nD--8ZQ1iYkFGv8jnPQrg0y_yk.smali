.class public final synthetic Landroidx/camera/core/-$$Lambda$ImageCapture$6nD--8ZQ1iYkFGv8jnPQrg0y_yk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/-$$Lambda$ImageCapture$6nD--8ZQ1iYkFGv8jnPQrg0y_yk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/-$$Lambda$ImageCapture$6nD--8ZQ1iYkFGv8jnPQrg0y_yk;

    invoke-direct {v0}, Landroidx/camera/core/-$$Lambda$ImageCapture$6nD--8ZQ1iYkFGv8jnPQrg0y_yk;-><init>()V

    sput-object v0, Landroidx/camera/core/-$$Lambda$ImageCapture$6nD--8ZQ1iYkFGv8jnPQrg0y_yk;->INSTANCE:Landroidx/camera/core/-$$Lambda$ImageCapture$6nD--8ZQ1iYkFGv8jnPQrg0y_yk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Landroidx/camera/core/ImageCapture;->lambda$submitStillCaptureRequest$4(Ljava/util/List;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
