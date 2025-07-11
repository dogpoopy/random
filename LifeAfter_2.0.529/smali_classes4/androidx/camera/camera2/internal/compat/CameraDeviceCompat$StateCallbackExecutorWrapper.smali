.class final Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraDeviceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/compat/CameraDeviceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateCallbackExecutorWrapper"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final mWrappedCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 146
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 147
    iput-object p2, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClosed$3$CameraDeviceCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public synthetic lambda$onDisconnected$1$CameraDeviceCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public synthetic lambda$onError$2$CameraDeviceCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 162
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public synthetic lambda$onOpened$0$CameraDeviceCompat$StateCallbackExecutorWrapper(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mWrappedCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice$StateCallback;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$uu_nKOhKRDqzKIIxAoifPNnXlfM;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$uu_nKOhKRDqzKIIxAoifPNnXlfM;-><init>(Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 157
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$HmoPdgtSrazWBI-E9CxK3B2aiDs;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$HmoPdgtSrazWBI-E9CxK3B2aiDs;-><init>(Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 162
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$beVKlMU3AHK4iGIK4WF_Bnnh8tQ;-><init>(Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$PDlXhZ1Hpcz4PtPSie-Yqs8aOhM;

    invoke-direct {v1, p0, p1}, Landroidx/camera/camera2/internal/compat/-$$Lambda$CameraDeviceCompat$StateCallbackExecutorWrapper$PDlXhZ1Hpcz4PtPSie-Yqs8aOhM;-><init>(Landroidx/camera/camera2/internal/compat/CameraDeviceCompat$StateCallbackExecutorWrapper;Landroid/hardware/camera2/CameraDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
