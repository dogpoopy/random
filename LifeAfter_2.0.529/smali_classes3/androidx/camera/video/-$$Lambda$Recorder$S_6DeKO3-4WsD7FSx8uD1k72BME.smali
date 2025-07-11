.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$S_6DeKO3-4WsD7FSx8uD1k72BME;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;

.field public final synthetic f$1:Landroidx/camera/video/VideoOutput$SourceState;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$S_6DeKO3-4WsD7FSx8uD1k72BME;->f$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$Recorder$S_6DeKO3-4WsD7FSx8uD1k72BME;->f$1:Landroidx/camera/video/VideoOutput$SourceState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$S_6DeKO3-4WsD7FSx8uD1k72BME;->f$0:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$Recorder$S_6DeKO3-4WsD7FSx8uD1k72BME;->f$1:Landroidx/camera/video/VideoOutput$SourceState;

    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder;->lambda$onSourceStateChanged$1$Recorder(Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void
.end method
