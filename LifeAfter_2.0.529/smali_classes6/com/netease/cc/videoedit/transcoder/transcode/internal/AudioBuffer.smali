.class Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;
.super Ljava/lang/Object;
.source "AudioBuffer.java"


# instance fields
.field decoderBufferIndex:I

.field decoderData:Ljava/nio/ShortBuffer;

.field decoderTimestampUs:J

.field isEndOfStream:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderBufferIndex:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderTimestampUs:J

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->decoderData:Ljava/nio/ShortBuffer;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/netease/cc/videoedit/transcoder/transcode/internal/AudioBuffer;->isEndOfStream:Z

    return-void
.end method
