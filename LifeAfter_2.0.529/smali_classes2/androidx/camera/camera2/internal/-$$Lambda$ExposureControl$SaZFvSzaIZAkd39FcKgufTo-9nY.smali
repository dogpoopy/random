.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$SaZFvSzaIZAkd39FcKgufTo-9nY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/ExposureControl;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/ExposureControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$SaZFvSzaIZAkd39FcKgufTo-9nY;->f$0:Landroidx/camera/camera2/internal/ExposureControl;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$SaZFvSzaIZAkd39FcKgufTo-9nY;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput p3, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$SaZFvSzaIZAkd39FcKgufTo-9nY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$SaZFvSzaIZAkd39FcKgufTo-9nY;->f$0:Landroidx/camera/camera2/internal/ExposureControl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$SaZFvSzaIZAkd39FcKgufTo-9nY;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget v2, p0, Landroidx/camera/camera2/internal/-$$Lambda$ExposureControl$SaZFvSzaIZAkd39FcKgufTo-9nY;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroidx/camera/camera2/internal/ExposureControl;->lambda$setExposureCompensationIndex$1$ExposureControl(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    return-void
.end method
