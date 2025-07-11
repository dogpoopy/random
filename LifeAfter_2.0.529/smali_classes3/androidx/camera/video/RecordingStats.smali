.class public abstract Landroidx/camera/video/RecordingStats;
.super Ljava/lang/Object;
.source "RecordingStats.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static of(JJLandroidx/camera/video/AudioStats;)Landroidx/camera/video/RecordingStats;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "duration must be positive value."

    .line 48
    invoke-static {v4, v5}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "bytes must be positive value."

    .line 49
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 50
    new-instance v0, Landroidx/camera/video/AutoValue_RecordingStats;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Landroidx/camera/video/AutoValue_RecordingStats;-><init>(JJLandroidx/camera/video/AudioStats;)V

    return-object v0
.end method


# virtual methods
.method public abstract getAudioStats()Landroidx/camera/video/AudioStats;
.end method

.method public abstract getNumBytesRecorded()J
.end method

.method public abstract getRecordedDurationNanos()J
.end method
