.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$B9IDaleY-97Ry4hYoDIFtgNXqyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/DefaultSurfaceProcessor;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$B9IDaleY-97Ry4hYoDIFtgNXqyU;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput p2, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$B9IDaleY-97Ry4hYoDIFtgNXqyU;->f$1:I

    iput p3, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$B9IDaleY-97Ry4hYoDIFtgNXqyU;->f$2:I

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$B9IDaleY-97Ry4hYoDIFtgNXqyU;->f$0:Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iget v1, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$B9IDaleY-97Ry4hYoDIFtgNXqyU;->f$1:I

    iget v2, p0, Landroidx/camera/core/processing/-$$Lambda$DefaultSurfaceProcessor$B9IDaleY-97Ry4hYoDIFtgNXqyU;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->lambda$snapshot$7$DefaultSurfaceProcessor(IILandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
