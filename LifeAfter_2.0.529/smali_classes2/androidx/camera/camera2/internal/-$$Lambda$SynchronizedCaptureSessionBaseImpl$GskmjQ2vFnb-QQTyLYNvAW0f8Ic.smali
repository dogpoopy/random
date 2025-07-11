.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$GskmjQ2vFnb-QQTyLYNvAW0f8Ic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

.field public final synthetic f$1:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$GskmjQ2vFnb-QQTyLYNvAW0f8Ic;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$GskmjQ2vFnb-QQTyLYNvAW0f8Ic;->f$1:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$GskmjQ2vFnb-QQTyLYNvAW0f8Ic;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$GskmjQ2vFnb-QQTyLYNvAW0f8Ic;->f$1:Landroidx/camera/camera2/internal/SynchronizedCaptureSession;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->lambda$onClosed$3$SynchronizedCaptureSessionBaseImpl(Landroidx/camera/camera2/internal/SynchronizedCaptureSession;)V

    return-void
.end method
