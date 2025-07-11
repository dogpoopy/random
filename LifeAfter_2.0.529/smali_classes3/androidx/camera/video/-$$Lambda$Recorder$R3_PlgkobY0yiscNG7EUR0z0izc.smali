.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$R3_PlgkobY0yiscNG7EUR0z0izc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;

.field public final synthetic f$1:Landroidx/camera/video/Recorder$RecordingRecord;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$R3_PlgkobY0yiscNG7EUR0z0izc;->f$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$Recorder$R3_PlgkobY0yiscNG7EUR0z0izc;->f$1:Landroidx/camera/video/Recorder$RecordingRecord;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$R3_PlgkobY0yiscNG7EUR0z0izc;->f$0:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$Recorder$R3_PlgkobY0yiscNG7EUR0z0izc;->f$1:Landroidx/camera/video/Recorder$RecordingRecord;

    invoke-virtual {v0, v1, p1}, Landroidx/camera/video/Recorder;->lambda$updateEncoderCallbacks$13$Recorder(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
