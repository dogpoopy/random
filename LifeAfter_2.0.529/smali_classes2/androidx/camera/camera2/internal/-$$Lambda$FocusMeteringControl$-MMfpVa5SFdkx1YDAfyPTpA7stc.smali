.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$-MMfpVa5SFdkx1YDAfyPTpA7stc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/camera2/internal/Camera2CameraControlImpl$CaptureResultListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/FocusMeteringControl;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$-MMfpVa5SFdkx1YDAfyPTpA7stc;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iput p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$-MMfpVa5SFdkx1YDAfyPTpA7stc;->f$1:I

    iput-wide p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$-MMfpVa5SFdkx1YDAfyPTpA7stc;->f$2:J

    return-void
.end method


# virtual methods
.method public final onCaptureResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$-MMfpVa5SFdkx1YDAfyPTpA7stc;->f$0:Landroidx/camera/camera2/internal/FocusMeteringControl;

    iget v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$-MMfpVa5SFdkx1YDAfyPTpA7stc;->f$1:I

    iget-wide v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$FocusMeteringControl$-MMfpVa5SFdkx1YDAfyPTpA7stc;->f$2:J

    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/camera/camera2/internal/FocusMeteringControl;->lambda$cancelFocusAndMeteringInternal$9$FocusMeteringControl(IJLandroid/hardware/camera2/TotalCaptureResult;)Z

    move-result p1

    return p1
.end method
