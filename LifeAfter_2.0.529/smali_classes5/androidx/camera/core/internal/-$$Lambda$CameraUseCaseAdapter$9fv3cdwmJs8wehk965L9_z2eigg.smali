.class public final synthetic Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$9fv3cdwmJs8wehk965L9_z2eigg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/Preview$SurfaceProvider;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$9fv3cdwmJs8wehk965L9_z2eigg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$9fv3cdwmJs8wehk965L9_z2eigg;

    invoke-direct {v0}, Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$9fv3cdwmJs8wehk965L9_z2eigg;-><init>()V

    sput-object v0, Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$9fv3cdwmJs8wehk965L9_z2eigg;->INSTANCE:Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$9fv3cdwmJs8wehk965L9_z2eigg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->lambda$createExtraPreview$1(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
