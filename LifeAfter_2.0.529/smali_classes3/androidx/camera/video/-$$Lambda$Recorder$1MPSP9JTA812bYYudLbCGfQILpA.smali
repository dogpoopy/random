.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$1MPSP9JTA812bYYudLbCGfQILpA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic f$2:Landroidx/camera/core/impl/Timebase;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$1MPSP9JTA812bYYudLbCGfQILpA;->f$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$Recorder$1MPSP9JTA812bYYudLbCGfQILpA;->f$1:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/-$$Lambda$Recorder$1MPSP9JTA812bYYudLbCGfQILpA;->f$2:Landroidx/camera/core/impl/Timebase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$1MPSP9JTA812bYYudLbCGfQILpA;->f$0:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$Recorder$1MPSP9JTA812bYYudLbCGfQILpA;->f$1:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/video/-$$Lambda$Recorder$1MPSP9JTA812bYYudLbCGfQILpA;->f$2:Landroidx/camera/core/impl/Timebase;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/video/Recorder;->lambda$onSurfaceRequested$0$Recorder(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method
