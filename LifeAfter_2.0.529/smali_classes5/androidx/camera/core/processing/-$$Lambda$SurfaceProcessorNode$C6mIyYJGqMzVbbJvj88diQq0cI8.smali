.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$C6mIyYJGqMzVbbJvj88diQq0cI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

.field public final synthetic f$1:Landroidx/camera/core/processing/SurfaceEdge;

.field public final synthetic f$2:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/SurfaceProcessorNode;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$C6mIyYJGqMzVbbJvj88diQq0cI8;->f$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iput-object p2, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$C6mIyYJGqMzVbbJvj88diQq0cI8;->f$1:Landroidx/camera/core/processing/SurfaceEdge;

    iput-object p3, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$C6mIyYJGqMzVbbJvj88diQq0cI8;->f$2:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$C6mIyYJGqMzVbbJvj88diQq0cI8;->f$0:Landroidx/camera/core/processing/SurfaceProcessorNode;

    iget-object v1, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$C6mIyYJGqMzVbbJvj88diQq0cI8;->f$1:Landroidx/camera/core/processing/SurfaceEdge;

    iget-object v2, p0, Landroidx/camera/core/processing/-$$Lambda$SurfaceProcessorNode$C6mIyYJGqMzVbbJvj88diQq0cI8;->f$2:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1, v2}, Landroidx/camera/core/processing/SurfaceProcessorNode;->lambda$sendSurfaceOutputs$0$SurfaceProcessorNode(Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V

    return-void
.end method
