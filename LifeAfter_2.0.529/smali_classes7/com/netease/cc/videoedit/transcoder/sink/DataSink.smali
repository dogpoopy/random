.class public interface abstract Lcom/netease/cc/videoedit/transcoder/sink/DataSink;
.super Ljava/lang/Object;
.source "DataSink.java"


# virtual methods
.method public abstract release()V
.end method

.method public abstract setLocation(DD)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setTrackFormat(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaFormat;)V
.end method

.method public abstract setTrackStatus(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Lcom/netease/cc/videoedit/transcoder/engine/TrackStatus;)V
.end method

.method public abstract stop()V
.end method

.method public abstract writeTrack(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
.end method
