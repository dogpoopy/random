.class Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;
.super Ljava/lang/Object;
.source "DefaultDataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedSample"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mSize:I

.field private final mTimeUs:J

.field private final mType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;


# direct methods
.method private constructor <init>(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    .line 45
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mSize:I

    .line 46
    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mTimeUs:J

    .line 47
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput p1, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaCodec$BufferInfo;Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;-><init>(Lcom/netease/cc/videoedit/transcoder/engine/TrackType;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mSize:I

    return p0
.end method

.method static synthetic access$200(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mTimeUs:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mFlags:I

    return p0
.end method

.method static synthetic access$400(Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;)Lcom/netease/cc/videoedit/transcoder/engine/TrackType;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/cc/videoedit/transcoder/sink/DefaultDataSink$QueuedSample;->mType:Lcom/netease/cc/videoedit/transcoder/engine/TrackType;

    return-object p0
.end method
