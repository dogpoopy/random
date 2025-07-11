.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$avzLRy32hNJ_q2gQArjTLkxSsiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$avzLRy32hNJ_q2gQArjTLkxSsiM;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput-object p2, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$avzLRy32hNJ_q2gQArjTLkxSsiM;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$avzLRy32hNJ_q2gQArjTLkxSsiM;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$avzLRy32hNJ_q2gQArjTLkxSsiM;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iget-object v1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$avzLRy32hNJ_q2gQArjTLkxSsiM;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$avzLRy32hNJ_q2gQArjTLkxSsiM;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$executeSafely$11$DefaultSurfaceProcessor(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
