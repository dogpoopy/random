.class public final synthetic Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$hUyfs9t-sWZ8X7Z7IDCPA49MScs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/Surface;

.field public final synthetic f$1:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$hUyfs9t-sWZ8X7Z7IDCPA49MScs;->f$0:Landroid/view/Surface;

    iput-object p2, p0, Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$hUyfs9t-sWZ8X7Z7IDCPA49MScs;->f$1:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$hUyfs9t-sWZ8X7Z7IDCPA49MScs;->f$0:Landroid/view/Surface;

    iget-object v1, p0, Landroidx/camera/core/internal/-$$Lambda$CameraUseCaseAdapter$hUyfs9t-sWZ8X7Z7IDCPA49MScs;->f$1:Landroid/graphics/SurfaceTexture;

    check-cast p1, Landroidx/camera/core/SurfaceRequest$Result;

    invoke-static {v0, v1, p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->lambda$createExtraPreview$0(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;Landroidx/camera/core/SurfaceRequest$Result;)V

    return-void
.end method
