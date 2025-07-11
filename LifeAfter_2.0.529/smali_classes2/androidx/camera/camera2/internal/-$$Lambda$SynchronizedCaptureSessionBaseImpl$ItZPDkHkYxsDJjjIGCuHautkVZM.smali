.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$ItZPDkHkYxsDJjjIGCuHautkVZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$ItZPDkHkYxsDJjjIGCuHautkVZM;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$ItZPDkHkYxsDJjjIGCuHautkVZM;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$ItZPDkHkYxsDJjjIGCuHautkVZM;->f$0:Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$SynchronizedCaptureSessionBaseImpl$ItZPDkHkYxsDJjjIGCuHautkVZM;->f$1:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/SynchronizedCaptureSessionBaseImpl;->lambda$startWithDeferrableSurface$1$SynchronizedCaptureSessionBaseImpl(Ljava/util/List;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
