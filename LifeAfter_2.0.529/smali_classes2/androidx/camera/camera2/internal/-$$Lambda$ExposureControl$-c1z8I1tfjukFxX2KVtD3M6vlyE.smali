.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$-c1z8I1tfjukFxX2KVtD3M6vlyE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/ExposureControl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/ExposureControl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$-c1z8I1tfjukFxX2KVtD3M6vlyE;->f$0:Landroidx/camera/camera2/internal/ExposureControl;

    iput p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$-c1z8I1tfjukFxX2KVtD3M6vlyE;->f$1:I

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$-c1z8I1tfjukFxX2KVtD3M6vlyE;->f$0:Landroidx/camera/camera2/internal/ExposureControl;

    iget v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$-c1z8I1tfjukFxX2KVtD3M6vlyE;->f$1:I

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/ExposureControl;->lambda$setExposureCompensationIndex$2$ExposureControl(ILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
