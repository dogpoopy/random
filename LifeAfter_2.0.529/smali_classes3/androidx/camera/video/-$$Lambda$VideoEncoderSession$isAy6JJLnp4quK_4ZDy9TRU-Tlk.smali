.class public final synthetic Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/VideoEncoderSession;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic f$2:Landroidx/camera/core/impl/Timebase;

.field public final synthetic f$3:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

.field public final synthetic f$4:Landroidx/camera/video/MediaSpec;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/VideoEncoderSession;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$0:Landroidx/camera/video/VideoEncoderSession;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$1:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$2:Landroidx/camera/core/impl/Timebase;

    iput-object p4, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$3:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    iput-object p5, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$4:Landroidx/camera/video/MediaSpec;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$0:Landroidx/camera/video/VideoEncoderSession;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$1:Landroidx/camera/core/SurfaceRequest;

    iget-object v2, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$2:Landroidx/camera/core/impl/Timebase;

    iget-object v3, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$3:Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;

    iget-object v4, p0, Landroidx/camera/video/-$$Lambda$VideoEncoderSession$isAy6JJLnp4quK_4ZDy9TRU-Tlk;->f$4:Landroidx/camera/video/MediaSpec;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/camera/video/VideoEncoderSession;->lambda$configure$2$VideoEncoderSession(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Landroidx/camera/video/internal/VideoValidatedEncoderProfilesProxy;Landroidx/camera/video/MediaSpec;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
