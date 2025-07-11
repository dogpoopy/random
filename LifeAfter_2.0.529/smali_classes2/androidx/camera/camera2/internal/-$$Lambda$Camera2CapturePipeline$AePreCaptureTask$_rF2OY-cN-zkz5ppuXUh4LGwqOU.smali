.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$_rF2OY-cN-zkz5ppuXUh4LGwqOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$_rF2OY-cN-zkz5ppuXUh4LGwqOU;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$AePreCaptureTask$_rF2OY-cN-zkz5ppuXUh4LGwqOU;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$AePreCaptureTask;->lambda$preCapture$0$Camera2CapturePipeline$AePreCaptureTask(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
