.class public final synthetic Landroidx/camera/camera2/internal/-$$Lambda$MQGWf2RindOwW_94BKDZ9EEVVs8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/-$$Lambda$MQGWf2RindOwW_94BKDZ9EEVVs8;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/internal/-$$Lambda$MQGWf2RindOwW_94BKDZ9EEVVs8;->f$0:Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;

    invoke-interface {v0}, Landroidx/camera/camera2/internal/Camera2CapturePipeline$PipelineTask;->postCapture()V

    return-void
.end method
