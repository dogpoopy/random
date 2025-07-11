.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$gMHKG2DX7FJQHCuRlWKTRGcMCc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$gMHKG2DX7FJQHCuRlWKTRGcMCc0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$gMHKG2DX7FJQHCuRlWKTRGcMCc0;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$gMHKG2DX7FJQHCuRlWKTRGcMCc0;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$gMHKG2DX7FJQHCuRlWKTRGcMCc0;->INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$gMHKG2DX7FJQHCuRlWKTRGcMCc0;

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

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;->lambda$preCapture$1(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
