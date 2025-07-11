.class public Lcom/netease/cc/videoedit/transcoder/transcode/NoOpTrackTranscoder;
.super Ljava/lang/Object;
.source "NoOpTrackTranscoder.java"

# interfaces
.implements Lcom/netease/cc/videoedit/transcoder/transcode/TrackTranscoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setUp(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public transcode(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
