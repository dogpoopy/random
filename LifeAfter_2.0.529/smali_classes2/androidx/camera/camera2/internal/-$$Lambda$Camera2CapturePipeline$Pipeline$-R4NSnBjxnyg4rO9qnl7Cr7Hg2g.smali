.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$-R4NSnBjxnyg4rO9qnl7Cr7Hg2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

.field public final synthetic f$1:Landroidx/camera/core/impl/CaptureConfig$Builder;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$-R4NSnBjxnyg4rO9qnl7Cr7Hg2g;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iput-object p2, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$-R4NSnBjxnyg4rO9qnl7Cr7Hg2g;->f$1:Landroidx/camera/core/impl/CaptureConfig$Builder;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$-R4NSnBjxnyg4rO9qnl7Cr7Hg2g;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;

    iget-object v1, p0, Landroidx/camera/camera2/internal/-$$Lambda$Camera2CapturePipeline$Pipeline$-R4NSnBjxnyg4rO9qnl7Cr7Hg2g;->f$1:Landroidx/camera/core/impl/CaptureConfig$Builder;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$Pipeline;->lambda$submitConfigsInternal$4$Camera2CapturePipeline$Pipeline(Landroidx/camera/core/impl/CaptureConfig$Builder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
