.class public final synthetic Landroidx/camera/video/-$$Lambda$V_JertVPoTn7LAm2fUSjYZTZucY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/camera/video/internal/encoder/Encoder$SurfaceInput$OnSurfaceUpdateListener;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$V_JertVPoTn7LAm2fUSjYZTZucY;->f$0:Landroidx/camera/video/Recorder;

    return-void
.end method


# virtual methods
.method public final onSurfaceUpdate(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$V_JertVPoTn7LAm2fUSjYZTZucY;->f$0:Landroidx/camera/video/Recorder;

    invoke-virtual {v0, p1}, Landroidx/camera/video/Recorder;->setLatestSurface(Landroid/view/Surface;)V

    return-void
.end method
