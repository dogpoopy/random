.class public interface abstract Lcom/netease/cc/videoedit/transcoder/source/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;
    }
.end annotation


# virtual methods
.method public abstract canReadTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Z
.end method

.method public abstract getDurationUs()J
.end method

.method public abstract getLocation()[D
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getReadUs()J
.end method

.method public abstract getTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)Landroid/media/MediaFormat;
.end method

.method public abstract isDrained()Z
.end method

.method public abstract readTrack(Lcom/netease/cc/videoedit/transcoder/source/DataSource$Chunk;)V
.end method

.method public abstract releaseTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
.end method

.method public abstract rewind()V
.end method

.method public abstract seekTo(J)J
.end method

.method public abstract selectTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;)V
.end method
