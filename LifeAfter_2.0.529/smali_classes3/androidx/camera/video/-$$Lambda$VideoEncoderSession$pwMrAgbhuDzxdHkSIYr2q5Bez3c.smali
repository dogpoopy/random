.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoEncoderSession$pwMrAgbhuDzxdHkSIYr2q5Bez3c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;

.field public final synthetic f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field public final synthetic f$2:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$pwMrAgbhuDzxdHkSIYr2q5Bez3c;->f$0:Landroidx/camera/video/VideoEncoderSession;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$pwMrAgbhuDzxdHkSIYr2q5Bez3c;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iput-object p3, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$pwMrAgbhuDzxdHkSIYr2q5Bez3c;->f$2:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final onSurfaceUpdate(Landroid/view/Surface;)V
    .locals 3

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$pwMrAgbhuDzxdHkSIYr2q5Bez3c;->f$0:Landroidx/camera/video/VideoEncoderSession;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$pwMrAgbhuDzxdHkSIYr2q5Bez3c;->f$1:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    iget-object v2, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$pwMrAgbhuDzxdHkSIYr2q5Bez3c;->f$2:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/video/VideoEncoderSession;->lambda$configureVideoEncoderInternal$5$VideoEncoderSession(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/core/SurfaceRequest;Landroid/view/Surface;)V

    return-void
.end method
