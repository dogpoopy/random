.class public final synthetic Landroidx/camera/core/processing/-$$Lambda$InternalImageProcessor$wU_8DxbbHMZg_JOO0gqq_1ymwiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/processing/InternalImageProcessor;

.field public final synthetic f$1:Landroidx/camera/core/ImageProcessor$Request;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/processing/InternalImageProcessor;Landroidx/camera/core/ImageProcessor$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/processing/-$$Lambda$InternalImageProcessor$wU_8DxbbHMZg_JOO0gqq_1ymwiA;->f$0:Landroidx/camera/core/processing/InternalImageProcessor;

    iput-object p2, p0, Landroidx/camera/core/processing/-$$Lambda$InternalImageProcessor$wU_8DxbbHMZg_JOO0gqq_1ymwiA;->f$1:Landroidx/camera/core/ImageProcessor$Request;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/processing/-$$Lambda$InternalImageProcessor$wU_8DxbbHMZg_JOO0gqq_1ymwiA;->f$0:Landroidx/camera/core/processing/InternalImageProcessor;

    iget-object v1, p0, Landroidx/camera/core/processing/-$$Lambda$InternalImageProcessor$wU_8DxbbHMZg_JOO0gqq_1ymwiA;->f$1:Landroidx/camera/core/ImageProcessor$Request;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/core/processing/InternalImageProcessor;->lambda$safeProcess$1$InternalImageProcessor(Landroidx/camera/core/ImageProcessor$Request;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
