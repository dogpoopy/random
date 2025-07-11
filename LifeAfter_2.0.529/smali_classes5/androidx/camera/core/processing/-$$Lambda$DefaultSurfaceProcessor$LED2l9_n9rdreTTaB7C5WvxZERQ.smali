.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$LED2l9_n9rdreTTaB7C5WvxZERQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$LED2l9_n9rdreTTaB7C5WvxZERQ;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput-object p2, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$LED2l9_n9rdreTTaB7C5WvxZERQ;->f$1:Landroidx/camera/core/SurfaceRequest;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$LED2l9_n9rdreTTaB7C5WvxZERQ;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iget-object v1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$LED2l9_n9rdreTTaB7C5WvxZERQ;->f$1:Landroidx/camera/core/SurfaceRequest;

    invoke-virtual {v0, v1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$onInputSurface$1$DefaultSurfaceProcessor(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
