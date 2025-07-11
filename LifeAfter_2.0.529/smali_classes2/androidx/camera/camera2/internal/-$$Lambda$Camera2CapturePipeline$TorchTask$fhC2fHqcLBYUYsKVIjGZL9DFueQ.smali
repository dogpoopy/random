.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$fhC2fHqcLBYUYsKVIjGZL9DFueQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$fhC2fHqcLBYUYsKVIjGZL9DFueQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$fhC2fHqcLBYUYsKVIjGZL9DFueQ;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$fhC2fHqcLBYUYsKVIjGZL9DFueQ;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$fhC2fHqcLBYUYsKVIjGZL9DFueQ;->INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$fhC2fHqcLBYUYsKVIjGZL9DFueQ;

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

    check-cast p1, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;->lambda$preCapture$3(Landroid/hardware/camera2/TotalCaptureResult;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
