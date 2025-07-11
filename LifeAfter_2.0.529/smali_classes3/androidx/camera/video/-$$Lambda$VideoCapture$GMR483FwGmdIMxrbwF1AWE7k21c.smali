.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoCapture$GMR483FwGmdIMxrbwF1AWE7k21c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Landroidx/camera/core/impl/SessionConfig$Builder;

.field public final synthetic f$2:Landroidx/camera/core/impl/CameraCaptureCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/CameraCaptureCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$GMR483FwGmdIMxrbwF1AWE7k21c;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$GMR483FwGmdIMxrbwF1AWE7k21c;->f$1:Landroidx/camera/core/impl/SessionConfig$Builder;

    iput-object p3, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$GMR483FwGmdIMxrbwF1AWE7k21c;->f$2:Landroidx/camera/core/impl/CameraCaptureCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$GMR483FwGmdIMxrbwF1AWE7k21c;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$GMR483FwGmdIMxrbwF1AWE7k21c;->f$1:Landroidx/camera/core/impl/SessionConfig$Builder;

    iget-object v2, p0, Landroidx/camera/video/-$$Lambda$VideoCapture$GMR483FwGmdIMxrbwF1AWE7k21c;->f$2:Landroidx/camera/core/impl/CameraCaptureCallback;

    invoke-static {v0, v1, v2}, Landroidx/camera/video/VideoCapture;->lambda$setupSurfaceUpdateNotifier$5(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/camera/core/impl/SessionConfig$Builder;Landroidx/camera/core/impl/CameraCaptureCallback;)V

    return-void
.end method
