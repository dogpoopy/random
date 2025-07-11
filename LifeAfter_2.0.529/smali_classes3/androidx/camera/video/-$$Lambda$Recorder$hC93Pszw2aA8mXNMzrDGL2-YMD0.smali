.class public final synthetic Landroidx/camera/video/-$$Lambda$Recorder$hC93Pszw2aA8mXNMzrDGL2-YMD0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/video/Recorder;

.field public final synthetic f$1:Landroidx/camera/video/Recorder$RecordingRecord;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/-$$Lambda$Recorder$hC93Pszw2aA8mXNMzrDGL2-YMD0;->f$0:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/-$$Lambda$Recorder$hC93Pszw2aA8mXNMzrDGL2-YMD0;->f$1:Landroidx/camera/video/Recorder$RecordingRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/-$$Lambda$Recorder$hC93Pszw2aA8mXNMzrDGL2-YMD0;->f$0:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/-$$Lambda$Recorder$hC93Pszw2aA8mXNMzrDGL2-YMD0;->f$1:Landroidx/camera/video/Recorder$RecordingRecord;

    invoke-virtual {v0, v1}, Landroidx/camera/video/Recorder;->lambda$resume$4$Recorder(Landroidx/camera/video/Recorder$RecordingRecord;)V

    return-void
.end method
