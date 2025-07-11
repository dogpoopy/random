.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$Uo40MCKPuma4aZ5df1-_fzufzHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder$RecordingRecord;

.field public final synthetic f$1:Landroidx/camera/video/VideoRecordEvent;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder$RecordingRecord;Landroidx/camera/video/VideoRecordEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$Uo40MCKPuma4aZ5df1-_fzufzHg;->f$0:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$Uo40MCKPuma4aZ5df1-_fzufzHg;->f$1:Landroidx/camera/video/VideoRecordEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$Uo40MCKPuma4aZ5df1-_fzufzHg;->f$0:Landroidx/camera/video/Recorder$RecordingRecord;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$Recorder$RecordingRecord$Uo40MCKPuma4aZ5df1-_fzufzHg;->f$1:Landroidx/camera/video/VideoRecordEvent;

    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder$RecordingRecord;->lambda$updateVideoRecordEvent$6$Recorder$RecordingRecord(Landroidx/camera/video/VideoRecordEvent;)V

    return-void
.end method
