.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraControlImpl;Ljava/util/List;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$1:Ljava/util/List;

    iput p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$2:I

    iput p4, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$3:I

    iput p5, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$4:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$0:Landroidx/camera/camera2/internal/Camera2CameraControlImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$1:Ljava/util/List;

    iget v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$2:I

    iget v3, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$3:I

    iget v4, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraControlImpl$LGwT7APgBskCsUz1IDeYUdaWMeg;->f$4:I

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/camera2/internal/Camera2CameraControlImpl;->lambda$submitStillCaptureRequests$5$Camera2CameraControlImpl(Ljava/util/List;IIILjava/lang/Void;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
