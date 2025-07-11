.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorWithExecutor$-quyJqrcRJ5vkxIyMCE7qZmCzCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceOutput;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;Landroidx/camera/core/SurfaceOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorWithExecutor$-quyJqrcRJ5vkxIyMCE7qZmCzCw;->f$0:Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;

    iput-object p2, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorWithExecutor$-quyJqrcRJ5vkxIyMCE7qZmCzCw;->f$1:Landroidx/camera/core/SurfaceOutput;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorWithExecutor$-quyJqrcRJ5vkxIyMCE7qZmCzCw;->f$0:Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;

    iget-object v1, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorWithExecutor$-quyJqrcRJ5vkxIyMCE7qZmCzCw;->f$1:Landroidx/camera/core/SurfaceOutput;

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/SurfaceProcessorWithExecutor;->lambda$onOutputSurface$1$SurfaceProcessorWithExecutor(Landroidx/camera/core/SurfaceOutput;)V

    return-void
.end method
