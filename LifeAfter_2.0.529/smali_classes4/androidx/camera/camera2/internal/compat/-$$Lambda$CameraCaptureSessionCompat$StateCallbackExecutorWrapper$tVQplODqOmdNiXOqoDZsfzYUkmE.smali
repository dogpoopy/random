.class public final synthetic Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$tVQplODqOmdNiXOqoDZsfzYUkmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$tVQplODqOmdNiXOqoDZsfzYUkmE;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$tVQplODqOmdNiXOqoDZsfzYUkmE;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$tVQplODqOmdNiXOqoDZsfzYUkmE;->f$0:Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;

    iget-object v1, p0, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraCaptureSessionCompat$StateCallbackExecutorWrapper$tVQplODqOmdNiXOqoDZsfzYUkmE;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/compat/CameraCaptureSessionCompat$StateCallbackExecutorWrapper;->lambda$onConfigureFailed$1$CameraCaptureSessionCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
