.class public final synthetic Landroidx/camera/core/-$$Lambda$Preview$fdww0upV1O7Dx3posCqNI5dElLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/Preview;

.field public final synthetic f$1:Landroidx/camera/core/processing/SurfaceEdge;

.field public final synthetic f$2:Landroidx/camera/core/impl/CameraInternal;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/Preview;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$Preview$fdww0upV1O7Dx3posCqNI5dElLA;->f$0:Landroidx/camera/core/Preview;

    iput-object p2, p0, Landroidx/camera/core/-$$Lambda$Preview$fdww0upV1O7Dx3posCqNI5dElLA;->f$1:Landroidx/camera/core/processing/SurfaceEdge;

    iput-object p3, p0, Landroidx/camera/core/-$$Lambda$Preview$fdww0upV1O7Dx3posCqNI5dElLA;->f$2:Landroidx/camera/core/impl/CameraInternal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$Preview$fdww0upV1O7Dx3posCqNI5dElLA;->f$0:Landroidx/camera/core/Preview;

    iget-object v1, p0, Landroidx/camera/core/-$$Lambda$Preview$fdww0upV1O7Dx3posCqNI5dElLA;->f$1:Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v2, p0, Landroidx/camera/core/-$$Lambda$Preview$fdww0upV1O7Dx3posCqNI5dElLA;->f$2:Landroidx/camera/core/impl/CameraInternal;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/Preview;->lambda$createPipeline$0$Preview(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/impl/CameraInternal;)V

    return-void
.end method
