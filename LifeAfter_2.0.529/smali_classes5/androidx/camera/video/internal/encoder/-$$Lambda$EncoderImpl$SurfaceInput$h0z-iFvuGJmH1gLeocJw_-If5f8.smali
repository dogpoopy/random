.class public final synthetic Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$SurfaceInput$h0z-iFvuGJmH1gLeocJw_-If5f8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;

.field public final synthetic f$1:Landroid/view/Surface;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$SurfaceInput$h0z-iFvuGJmH1gLeocJw_-If5f8;->f$0:Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;

    iput-object p2, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$SurfaceInput$h0z-iFvuGJmH1gLeocJw_-If5f8;->f$1:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$SurfaceInput$h0z-iFvuGJmH1gLeocJw_-If5f8;->f$0:Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;

    iget-object v1, p0, Landroidx/camera/video/internal/encoder/-$$Lambda$EncoderImpl$SurfaceInput$h0z-iFvuGJmH1gLeocJw_-If5f8;->f$1:Landroid/view/Surface;

    invoke-static {v0, v1}, Landroidx/camera/video/internal/encoder/EncoderImpl$SurfaceInput;->lambda$notifySurfaceUpdate$0(Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;Landroid/view/Surface;)V

    return-void
.end method
