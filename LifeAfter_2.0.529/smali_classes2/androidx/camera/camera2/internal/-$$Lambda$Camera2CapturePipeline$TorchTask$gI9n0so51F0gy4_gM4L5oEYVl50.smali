.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$gI9n0so51F0gy4_gM4L5oEYVl50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CapturePipeline$ResultListener$Checker;


# static fields
.field public static final synthetic INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$gI9n0so51F0gy4_gM4L5oEYVl50;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$gI9n0so51F0gy4_gM4L5oEYVl50;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$gI9n0so51F0gy4_gM4L5oEYVl50;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$gI9n0so51F0gy4_gM4L5oEYVl50;->INSTANCE:Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$TorchTask$gI9n0so51F0gy4_gM4L5oEYVl50;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final check(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 0

    invoke-static {p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$TorchTask;->lambda$preCapture$1(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
