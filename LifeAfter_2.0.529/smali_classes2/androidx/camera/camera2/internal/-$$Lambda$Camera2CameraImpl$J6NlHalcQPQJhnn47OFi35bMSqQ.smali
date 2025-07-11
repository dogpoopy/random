.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$J6NlHalcQPQJhnn47OFi35bMSqQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CameraImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$J6NlHalcQPQJhnn47OFi35bMSqQ;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iput-boolean p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$J6NlHalcQPQJhnn47OFi35bMSqQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$J6NlHalcQPQJhnn47OFi35bMSqQ;->f$0:Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-boolean v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CameraImpl$J6NlHalcQPQJhnn47OFi35bMSqQ;->f$1:Z

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/internal/Camera2CameraImpl;->lambda$setActiveResumingMode$16$Camera2CameraImpl(Z)V

    return-void
.end method
