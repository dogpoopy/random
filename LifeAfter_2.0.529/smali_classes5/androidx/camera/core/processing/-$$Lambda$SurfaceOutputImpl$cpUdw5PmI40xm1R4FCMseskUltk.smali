.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$SurfaceOutputImpl$cpUdw5PmI40xm1R4FCMseskUltk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/SurfaceOutputImpl;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceOutputImpl;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceOutputImpl$cpUdw5PmI40xm1R4FCMseskUltk;->f$0:Landroidx/camera/core/processing/SurfaceOutputImpl;

    iput-object p2, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceOutputImpl$cpUdw5PmI40xm1R4FCMseskUltk;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceOutputImpl$cpUdw5PmI40xm1R4FCMseskUltk;->f$0:Landroidx/camera/core/processing/SurfaceOutputImpl;

    iget-object v1, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceOutputImpl$cpUdw5PmI40xm1R4FCMseskUltk;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/SurfaceOutputImpl;->lambda$requestClose$1$SurfaceOutputImpl(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
