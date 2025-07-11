.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$_oYYR3-cc_qhEfw46OxuFfvtlSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

.field public final synthetic f$1:Landroidx/camera/core/SurfaceOutput;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Landroidx/camera/core/SurfaceOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$_oYYR3-cc_qhEfw46OxuFfvtlSM;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput-object p2, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$_oYYR3-cc_qhEfw46OxuFfvtlSM;->f$1:Landroidx/camera/core/SurfaceOutput;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$_oYYR3-cc_qhEfw46OxuFfvtlSM;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iget-object v1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$_oYYR3-cc_qhEfw46OxuFfvtlSM;->f$1:Landroidx/camera/core/SurfaceOutput;

    check-cast p1, Landroidx/camera/core/SurfaceOutput$Event;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$onOutputSurface$2$DefaultSurfaceProcessor(Landroidx/camera/core/SurfaceOutput;Landroidx/camera/core/SurfaceOutput$Event;)V

    return-void
.end method
