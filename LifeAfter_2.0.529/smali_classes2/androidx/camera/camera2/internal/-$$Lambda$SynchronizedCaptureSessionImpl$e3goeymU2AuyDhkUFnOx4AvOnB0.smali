.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$e3goeymU2AuyDhkUFnOx4AvOnB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$e3goeymU2AuyDhkUFnOx4AvOnB0;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionImpl$e3goeymU2AuyDhkUFnOx4AvOnB0;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;

    invoke-virtual {v0}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionImpl;->lambda$close$3$SynchronizedCaptureSessionImpl()V

    return-void
.end method
