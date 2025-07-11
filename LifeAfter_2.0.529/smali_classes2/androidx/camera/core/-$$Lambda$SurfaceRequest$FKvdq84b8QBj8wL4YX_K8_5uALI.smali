.class public final synthetic Landroidx/camera/core/-$$Lambda$SurfaceRequest$FKvdq84b8QBj8wL4YX_K8_5uALI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/SurfaceRequest;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$FKvdq84b8QBj8wL4YX_K8_5uALI;->f$0:Landroidx/camera/core/SurfaceRequest;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$FKvdq84b8QBj8wL4YX_K8_5uALI;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$FKvdq84b8QBj8wL4YX_K8_5uALI;->f$0:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$SurfaceRequest$FKvdq84b8QBj8wL4YX_K8_5uALI;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/SurfaceRequest;->lambda$initialSurfaceRecreationCompleter$6$SurfaceRequest(Ljava/util/concurrent/atomic/AtomicReference;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
